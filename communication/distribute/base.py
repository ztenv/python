#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import Queue
from multiprocessing.managers import BaseManager

class QueueManager(BaseManager):
    pass

class Base(object):
    """
    客户端和服务器的基类
    """

    def __init__(self):
        self._isrun= False

    def start(self):
        self._isrun= True
        return True

    def stop(self):
        self._isrun= False
        return True

    def wait(self):
        pass

    def getStatus(self):
        return  self._isrun