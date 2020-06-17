#!/usr/bin/env python
import sys
import Logger
from importlib import import_module
import gzip
from io import BytesIO

log = Logger.getLogger(__name__)

if sys.version_info[:2] < (3, 0):
    _urllib = import_module('urllib')
    _urllib2 = import_module('urllib2')
    _urlparse = import_module('urlparse')
    urlparse = _urlparse.urlparse
    urlencode = _urllib.urlencode
    unquote = _urllib.urlencode
    Request = _urllib2.Request
    urlopen2 = _urllib2.urlopen
    URLError = _urllib2.URLError
else:
    from ntlmauth import HTTPNtlmAuthHandler
    _urllib = import_module('urllib')
    _urlparse = import_module('urllib.parse')
    _urlrequest = import_module('urllib.request')
    urlparse = _urlparse.urlparse
    urlencode = _urlparse.urlencode
    Request = _urlrequest.Request
    urlopen2 = _urlrequest.urlopen
    URLError = _urllib.error.URLError

    def setup_proxy(proxy_protocols, proxy_url, proxy_port, sites, username="", password=""):
        proxy_dict = {p:'%s:%s'%(proxy_url, proxy_port) for p in proxy_protocols}
        ph=_urlrequest.ProxyHandler(proxy_dict)
        passman = _urlrequest.HTTPPasswordMgrWithDefaultRealm()

        log.info('add proxy site %s', sites)
        passman.add_password(None, sites, username, password)
        pnah= HTTPNtlmAuthHandler.ProxyNtlmAuthHandler(passman)
        pbah= _urlrequest.ProxyBasicAuthHandler(passman)
        pdah= _urlrequest.ProxyDigestAuthHandler(passman)
        
        cp=_urlrequest.HTTPCookieProcessor()
        opener=_urlrequest.build_opener(cp, 
                                        _urlrequest.HTTPSHandler(debuglevel=1), 
                                        _urlrequest.HTTPHandler(debuglevel=99), 
                                        ph, pnah, pbah, pdah,
                                        _urlrequest.HTTPErrorProcessor())
        _urlrequest.install_opener(opener)

urljoin = _urlparse.urljoin

def _ungzip(html):
    if html[:6] == b'\x1f\x8b\x08\x00\x00\x00':
        html = gzip.GzipFile(fileobj = BytesIO(html)).read()
    return html

def loadurl(url, headers={}, optional=False):
    if not url: return None
    log.debug('getting url %s, headers %s', url, headers)
    if 'User-Agent' not in headers:
        headers['User-Agent'] = 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1521.3 Safari/537.36'
    try:
        req = Request(url=url, headers=headers)
        con = urlopen2(req)
    except Exception as err:
        if not optional:
            log.error('error %s occurs during load %s with header %s', err, url, headers)
        return None
    if con:
        log.debug("Hit %s code: %s", str(con), con.getcode())
        data = con.read()
        data = _ungzip(data)
        return data
    else:
        log.error("No data returned.")
    return None

def loadpage(url, decodec=('utf8', 'strict'), headers={}, optional=False):
    data = loadurl(url, headers=headers, optional=optional)
    return data.decode(*decodec) if data else None

def postto(url, datadict, headers={}, decodec='gbk'):
    params = urlencode(datadict)
    log.info('Post %s to %s, headers %s', params, url, headers)
    try:
        req = Request(url=url, data=params)
        for k,v in list(headers.items()):
            req.add_header(k,v)
        con = urlopen2(req)
        if con:
            log.debug("Hit %s %d", str(con), con.getcode())
            data = con.read(-1)
            return data.decode(decodec)
        else:
            log.error("No data returned.")
            return None

    except Exception as err:
        log.error('error %s occurs during post %s to %s', err, params, url)
        log.debug('', exc_info=1)

if __name__ == '__main__':
    log.setLevel(log.PAGEDUMP)
    log.info('try loading a paage')
    c = loadpage('http://ifconfig.me/all', headers={'User-Agent':'curl'})
    log.info('page content: \n%s', c)
