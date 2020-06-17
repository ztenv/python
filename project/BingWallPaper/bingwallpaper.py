#!/usr/bin/env python3
# -*- coding=utf-8 -*-
import re
import webutil
import json
import os
from PIL import Image
import win32gui,win32api,win32con
import matplotlib.pyplot as plt
from Logger import getLogger
from Config import Config

log = getLogger(__name__)

def _property_need_loading(f):
    def wrapper(*args, **kwargs):
        args[0]._assert_load(f.__name__)
        return f(*args, **kwargs)
    return wrapper

class HighResolutionSetting:
    settings = dict()
    def getPicUrl(self, rooturl, imgurlbase, fallbackurl, has_wp, *args, **kwargs):
        raise NotImplementedError()

    @staticmethod
    def getByName(name):
        if name not in HighResolutionSetting.settings:
            raise ValueError('{} is not a legal resolution setting'.format(name))
        return HighResolutionSetting.settings[name]

class PreferHighResolution(HighResolutionSetting):
    def getPicUrl(self, rooturl, imgurlbase, fallbackurl, has_wp, *args, **kwargs):
        if has_wp:
            wplink = webutil.urljoin(rooturl, '_'.join([imgurlbase,'1920x1200.jpg'])) 
            log.debug('in prefer mode, get high resolution url %s', wplink)
        else:
            wplink = webutil.urljoin(rooturl, fallbackurl)
            log.debug('in prefer mode, get normal resolution url %s', wplink)
        return (wplink,)

class InsistHighResolution(HighResolutionSetting):
    def getPicUrl(self, rooturl, imgurlbase, fallbackurl, has_wp, *args, **kwargs):
        if has_wp:
            wplink = webutil.urljoin(rooturl, '_'.join([imgurlbase,'1920x1200.jpg'])) 
            log.debug('in insist mode, get high resolution url %s', wplink)
        else:
            wplink = None
            log.debug('in insist mode, drop normal resolution pic')
        return (wplink,)

class NeverHighResolution(HighResolutionSetting):
    def getPicUrl(self, rooturl, imgurlbase, fallbackurl, has_wp, *args, **kwargs):
        wplink = webutil.urljoin(rooturl, fallbackurl)
        log.debug('never use high resolution, use %s', wplink)
        return (wplink,)

class HighestResolution(HighResolutionSetting):
    def getPicUrl(self, rooturl, imgurlbase, fallbackurl, has_wp, *args, **kwargs):
        if has_wp:
            wplink = webutil.urljoin(rooturl, '_'.join([imgurlbase,'1920x1200.jpg'])) 
            log.debug('support wallpaper, get high resolution url %s', wplink)
        else:
            wplink = webutil.urljoin(rooturl, '_'.join([imgurlbase,'1920x1080.jpg'])) 
            log.debug('not support wallpaper, use second highest resolution %s', wplink)
        return (wplink,)

class ManualHighResolution(HighResolutionSetting):
    def getPicUrl(self, rooturl, imgurlbase, fallbackurl, has_wp, resolution):
        if not re.match(r'\d+x\d+', resolution):
            log.error('invalid resolution "%s" for manual mode', resolution)
            raise ValueError('invalid resolution "%s"'%(resolution, ))
        wplink = webutil.urljoin(rooturl, ''.join([imgurlbase, '_', resolution, '.jpg'])) 
        log.debug('manually specify resolution, use %s', wplink)
        return (wplink,)

HighResolutionSetting.settings['prefer'] = PreferHighResolution
HighResolutionSetting.settings['insist'] = InsistHighResolution
HighResolutionSetting.settings['never'] = NeverHighResolution
HighResolutionSetting.settings['highest'] = HighestResolution
HighResolutionSetting.settings['manual'] = ManualHighResolution

class AssetCollector:
    __registered_collectors = dict()
    @classmethod
    def register(cls, name, collector):
        if name in cls.__registered_collectors:
            raise Exception(
                'collector {!s} has been registered by {!r}'.format(
                    name, cls.__registered_collectors[name]
                )
            )
        cls.__registered_collectors[name] = collector

    @classmethod
    def get(cls, name, *initargs, **initkwargs):
        if name not in cls.__registered_collectors:
            log.warning('collector %s is not supported', name)
            # return a blank collect
            return AssetCollector()
        return cls.__registered_collectors[name](*initargs, **initkwargs)

    def collect(self, rooturl, curimage):
        return None

class AccompanyImageCollector(AssetCollector):
    def collect(self, rooturl, curimage):
        imgurlbase = curimage['urlbase']
        has_wp = curimage.get('wp', False)
        if has_wp and '_ZH_' not in imgurlbase:
            log.debug('%s may have a Chinese brother', imgurlbase)
            zhlink = [webutil.urljoin(rooturl, '_'.join([imgurlbase,'ZH_1920x1200.jpg'])), ]
        else:
            log.debug('no chinese logo for %s', imgurlbase)
            zhlink = None
        return zhlink

class VideoCollector(AssetCollector):
    def collect(self, rooturl, curimage):
        vlink = list()
        if 'vid' not in curimage:
            return None
        for format, _, vurl in curimage['vid']['sources']:
            if format.endswith('hd'):
                continue
            elif vurl.startswith('//'):
                vurl = 'http:' + vurl
            vlink.append(vurl)
        return vlink

class HdVideoCollector(AssetCollector):
    def collect(self, rooturl, curimage):
        vlink = list()
        if 'vid' not in curimage:
            return None
        for format, _, vurl in curimage['vid']['sources']:
            if not format.endswith('hd'):
                continue
            elif vurl.startswith('//'):
                vurl = 'http:' + vurl
            vlink.append(vurl)
        return vlink

AssetCollector.register('accompany', AccompanyImageCollector)
AssetCollector.register('video', VideoCollector)
AssetCollector.register('hdvideo', HdVideoCollector)

class BingWallpaperPage:
    BASE_URL='http://www.bing.com'
    IMAGE_API='/HPImageArchive.aspx?format=js&mbl=1&idx={idx}&n={n}&video=1'
    def __init__(self, idx, n=1, base=BASE_URL, api=IMAGE_API, country_code=None, 
                market_code=None, high_resolution = PreferHighResolution, resolution='1920x1200',
                collect=[]):
        self.idx = idx
        self.n = n
        self.base = base
        self.api = api
        self.reset()
        self.url = webutil.urljoin(self.base, self.api.format(idx=idx, n=n))
        self.country_code = country_code
        self.market_code = market_code
        self.high_resolution = high_resolution
        self.resolution = resolution
        self.collect = collect
        self._wall_paper_name=""
        if market_code:
            BingWallpaperPage.validate_market(market_code)
            self.url = '&'.join([self.url, 'mkt={}'.format(market_code)])
        elif country_code:
            self.url = '&'.join([self.url, 'cc={}'.format(country_code)])

    def reset(self):
        self.__loaded = False
        self.content = ''
        self.__img_link = None
        self.discovered = 0
        self.filtered = 0
        self.wplinks = []

    def _parse(self, rawfile):
        try:
            self.content = json.loads(rawfile)
        except Exception as ex:
            log.exception(ex)
            return False

        # including blank response or 'null' in json
        if not self.content: return False
        
        log.debug(self.content)

        self.__images = self.content['images']
        if 'market' in self.content and 'mkt' in self.content['market']:
            self.act_market = self.content['market']['mkt']
        self._update_img_link()

        log.warning('links to be downloaded: %s', self.wplinks)

        return True

    def _get_metadata(self, i):
        metadata = dict()
        metafield = [
                'copyright', 'startdate', 'copyrightlink', 'hsh'
                ]
        for f in metafield:
            metadata[f] = i.get(f, None)
        metadata['market'] = self.act_market

        return metadata

    def _update_img_link(self):
        self.wplinks=[]
        for i in self.__images:
            metadata = self._get_metadata(i)
            has_wp = i.get('wp', False)
            log.debug('handling %s, rooturl=%s, imgurlbase=%s, has_wp=%s, resolution=%s, act_market=%s',
                        i['url'], self.base, i['urlbase'], has_wp, self.resolution, self.act_market)
            wplink = self.high_resolution().getPicUrl(self.base, i['urlbase'], i['url'], has_wp, self.resolution)
            collections = list()
            for collector_name in self.collect:
                asset = AssetCollector.get(collector_name).collect(self.base, i)
                if asset: collections += asset
            if wplink: self.wplinks.append((wplink + tuple(collections), metadata))

    def load(self):
        self.reset()
        log.info('loading from %s', self.url)
        rawfile = webutil.loadpage(self.url)
        
        if rawfile:
            log.info('%d bytes loaded', len(rawfile))
            self.__loaded = self._parse(rawfile)
        else:
            log.error('can\'t download photo page')

    def loaded(self):
        return self.__loaded

    @_property_need_loading
    def images(self):
        return self.__images
    
    @_property_need_loading
    def image_links(self):
        return self.wplinks

    def _assert_load(self, propname):
        if not self.loaded():
            raise Exception('use property "{}" before loading'.format(propname))

    def __str__(self):
        s_basic = '<url="{}", loaded={}'.format(self.url, self.loaded())
        if not self.loaded():
            return s_basic + '>'
        s_all   = s_basic + ', images="{}">'.format(self.images())
        return s_all

    def __repr__(self):
        return '{}({})'.format(self.__class__.__name__, repr(self.url))
    
    @staticmethod
    def validate_market(market_code):
        #
        if not re.match(r'\w\w-\w\w', market_code):
            raise ValueError('%s is not a valid market code.'%(market_code,))
        return True

    def _jpeg2bmp(self):
        bmpfile=""
        try:
            print(self._wall_paper_name)
            bmpImage = Image.open(self._wall_paper_name)
            bmpfile= Config.getWallPaperDir()+'WallPaper.bmp'
            bmpImage.save(bmpfile, "BMP")
            log.debug("save image to {0}".format(bmpfile))
        except Exception as err:
            log.error("set WallPaper error:{0}".format(err))
            bmpfile=""
        return bmpfile

    def _setWallPaper(self):
        try:
            log.debug("setting WallPaper")
            bmpfile=self._jpeg2bmp()
            #k = win32api.RegOpenKeyEx(win32con.HKEY_CURRENT_USER, "Control Panel\\Desktop", 0, win32con.KEY_SET_VALUE)
            #win32api.RegSetValueEx(k, "WallpaperStyle", 0, win32con.REG_SZ, "2")  # 2拉伸适应桌面,0桌面居中
            #win32api.RegSetValueEx(k, "TileWallpaper", 0, win32con.REG_SZ, "0")
            #win32gui.SystemParametersInfo(win32con.SPI_SETDESKWALLPAPER,bmpfile, 1 + 2)
            #log.debug("set WallPaper from file {0}".format(bmpfile))
        except Exception as err:
            log.error("set WallPaper error:{0}".format(err))
            return False
        return True

    def DownLoadTodayPictures(self):
        self.load()
        for wplinks,metadata in self.image_links():
            img_name=wplinks[0].split('/')[-1:][0]
            img_name=img_name[img_name.find("=")+1:img_name.find(".jpg")+4]
            if not img_name.endswith(".jpg"):
                img_name=img_name[:img_name.rfind(".")]
                img_name=img_name+".jpg"
            #self._wall_paper_name=Config.getWallPaperDir()+wplinks[0].split('/')[-1:][0]
            self._wall_paper_name=Config.getWallPaperDir()+img_name
            if os.path.exists(self._wall_paper_name):
                log.info(self._wall_paper_name+" exists,continue")
                continue
            with open(self._wall_paper_name, 'wb') as of:
                of.write(webutil.loadurl(wplinks[0]))
            img=Image.open(self._wall_paper_name)
            plt.figure("shlian's lastest wallpaper.")
            plt.imshow(img)
            plt.show()
            img.close()
            #if self._setWallPaper():
            #    break

if __name__ == '__main__':
    s = BingWallpaperPage(0, 4)
    s.DownLoadTodayPictures()
    log.debug("bingwallpaper exit...\n")
