# -*- coding=utf-8 -*-
import logging
import logging.handlers
import os


def getLogger(name):
    if not os.path.exists(".\\log\\BingWallPapers.log"):
        os.mkdir(".\\log\\")
    #logging.basicConfig(level=logging.DEBUG,
    #                    format='%(asctime)s %(name)-12s %(levelname)-8s %(message)s',
    #                    datefmt='%m-%d %H:%M',
    #                    filename='myapp.log',
    #                    filemode='w')
    #console.setLevel(logging.INFO)
    #formatter = logging.Formatter('%(name)-12s: %(levelname)-8s %(message)s')
    #console.setFormatter(formatter)

    fmt = '%(asctime)s [%(process)d:%(thread)d]@%(filename)s@%(funcName)s@%(lineno)s@[%(levelname)s]: %(message)s'
    formatter = logging.Formatter(fmt)  # 实例化formatter

    handler = logging.handlers.RotatingFileHandler(".\\log\\BingWallPapers.log", maxBytes=1024 * 1024, backupCount=5)  # 实例化handler
    handler.setFormatter(formatter)  # 为handler添加formatter

    console = logging.StreamHandler()
    console.setFormatter(formatter)

    logger = logging.getLogger(name)  # 获取名为tst的logger
    logger.addHandler(handler)  # 为logger添加handler
    logger.addHandler(console)
    logger.setLevel(logging.DEBUG)
    return logger
