# -*- coding: utf-8 -*-
# @file   : log.py
# @author : shlian
# @date   : 2019/5/25
# @version: 1.0
# @desc   :
import logging
import yaml
import logging.config
import os
def setup(config_file='config.yaml', default_level=logging.INFO,is_debug=False):
    path =config_file
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            config = yaml.load(f)
            if is_debug:
                try:
                    file_name=config.get("handlers").get("file").get("filename")
                    config.get("handlers").get("file")["filename"]=".{0}".format(file_name)
                    file_name=config.get("handlers").get("error").get("filename")
                    config.get("handlers").get("error")["filename"]=".{0}".format(file_name)
                except Exception as ee:
                    print(ee)
            logging.config.dictConfig(config)
    else:
        logging.basicConfig(level=default_level)
        logging.warning("{0} does not exist!".format(path))
