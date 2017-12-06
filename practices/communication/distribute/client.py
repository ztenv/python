#!/usr/bin/python
# -*- coding: utf-8 -*-

import Queue
import time
from base import QueueManager
from base import Base
from multiprocessing import freeze_support
import random
import threading

class Client(Base):

    def __init__(self,ip='127.0.0.1',port=20003):
        super(Client,self).__init__()
        self._ip= ip
        self._port= port
        self._task_queue=Queue.Queue()
        self._result_queue=Queue.Queue()
        QueueManager.register("get_task_queue")
        QueueManager.register("get_result_queue")
        self._manager = QueueManager(address=(self._ip, self._port), authkey="abcde")
        if not self._manager:
            print "init server[{0}:{1}] error".format(self._ip, self._port)
        self._pthread=None

    def _process(self):

        for i in xrange(0,100,1):
            value=self._task_queue.get()
            print "get value=",value
            self._result_queue.put(value*2)

    def start(self):
        res=super(Client,self).start()
        if not self._manager:
            return False
        else:
            self._manager.connect()
            self._task_queue = self._manager.get_task_queue()
            self._result_queue = self._manager.get_result_queue()
            self._pthread=threading.Thread(target=self._process,args=())
            self._pthread.setDaemon(True)
            self._pthread.start()

    def wait(self):
        super(Client,self).wait()
        self._pthread.join()

    def stop(self):
        res=super(Client,self).stop()
        if not self._manager:
            return False
        else:
            return True

if __name__=="__main__":
    freeze_support()
    server= Client()
    server.start()
    server.wait()
    server.stop()