# -*- coding=utf-8 -*-
from selenium import webdriver
import os
import time,sys,re,urllib2,urllib,cookielib,datetime,requests
import threading
from httplib import HTTPMessage

PHANTOMJS_PATH='phantomjs.exe'

class Config:

    def __init__(self):
        pass

    @classmethod
    def getJSDriver(cls):
        return os.getcwd()+"\\phantomjs.exe"

    @classmethod
    def getWallPaperDir(cls):
        if not os.path.exists(os.getcwd()+"\\WallPapers\\"):
            os.mkdir(os.getcwd()+"\\WallPapers\\")
        return os.getcwd()+"\\WallPapers\\"

    @classmethod
    def getInterval(cls):
        return 2;

