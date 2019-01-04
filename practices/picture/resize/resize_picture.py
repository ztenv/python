import sys
import os
import traceback
from PIL import Image
import log
import logging
import json
logger=logging.getLogger("main")

class image_resizer(object):
    def __init__(self):
        logger.info("work dir:{0}".format(os.getcwd()))
        self._base_path_list=[]
        self._pictures=[]
        self._save_old=False
        self._load_config()
        self._scan_file_count=0
        self._process_file_count=0

    def _load_config(self):
        with open("config.txt","r") as f:
            load_dict=json.load(f)
            for item in load_dict["path"]:
                self._base_path_list.append(os.path.join(os.getcwd(),item))
            for ext in load_dict["ext"]:
                self._pictures.append(ext)
            self._save_old=load_dict["save_old"]

    def _find_all_pictures(self,base_path):
        logger.info("sub_scan_path:{0}".format(base_path))
        for root,dirs,files in os.walk(base_path):
            for dirname in dirs:
                self._find_all_pictures(dirname)
            for filename in files:
                full_name=os.path.join(root,filename)
                if full_name[full_name.rfind("."):] in self._pictures:
                    yield full_name
                else:
                    continue

    def _resize_picture(self,file_name):
        image= Image.open(file_name)
        w,h=image.size
        if w>1024 and h>1024:
            logger.info("pic_name:{0},resolution({1},{2})".format(file_name,w,h))
            scale=1024/w if(1024/w>1024/h) else 1024/h
            w=int(w*scale)
            h=int(h*scale)
            if(w>=1024)and(h>=1024):
                new_image=image.resize((int(w),int(h)))
                new_image=new_image.convert('RGB')
                if self._save_old:
                    new_file_name="{0}-shlian_pengjian{1}".format(file_name[:file_name.rfind(".")],file_name[file_name.rfind("."):])
                else:
                    new_file_name=file_name
                logger.info("save to:{0},resolution({1},{2})".format(new_file_name,w,h))
                new_image.save(new_file_name)
                self._process_file_count=self._process_file_count+1
                new_image.close()
            else:
                logger.info("ignore picture:{0},resolution{1},{2}".format(file_name,image.size[0],image.size[1]))
        else:
            logger.info("ignore picture:{0},resolution{1},{2}".format(file_name,image.size[0],image.size[1]))
        image.close()

    def resize_all(self):
        for path in self._base_path_list:
            for item in self._find_all_pictures(path):
                try:
                    self._resize_picture(item)
                except Exception as ee:
                    logger.error("resize:{0} error.".format(item))
                    logger.error("ErrorMessage:{0}".format(ee))
                    logger.error(traceback.format_exc())
                self._scan_file_count=self._scan_file_count+1
        logger.info("scaned {0} pictures,processed {1} pictures,ignore {2} pictures".format(self._scan_file_count,
                                self._process_file_count,self._scan_file_count-self._process_file_count))

if __name__=="__main__":
    log.setup("logconfig.yaml")
    ir=image_resizer()
    ir.resize_all()
    print("press enter key to exit")
    sys.stdin.readline()
