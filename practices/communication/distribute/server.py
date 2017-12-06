#!/usr/bin/python
# -*- coding: utf-8 -*-

import Queue
import time
from base import QueueManager
from base import Base
from multiprocessing import freeze_support
import random
import threading

task_queue = Queue.Queue()
result_queue = Queue.Queue()
def get_task_queue():
    return task_queue
def get_result_queue():
    return result_queue

class Server(Base):
    """
    分布式服务器，采用queue实现通信
    """
    def __init__(self, ip='127.0.0.1', port=20003):
        super(Server, self).__init__()
        self._ip = ip
        self._port = port
        self._task_queue = None
        self._result_queue = None
        QueueManager.register("get_task_queue", callable=get_task_queue)
        QueueManager.register("get_result_queue", callable=get_result_queue)
        self._manager = QueueManager(address=(self._ip, self._port), authkey="abcde")
        if not self._manager:
            print "init server[{0}:{1}] error".format(self._ip, self._port)
        self._pthread=threading.Thread()
        self._cthread=threading.Thread()

    def _produce(self):
        print "produce is running"
        for i in xrange(1, 100, 1):
            r = random.randint(-100, 100)
            self._task_queue.put(r)
            print "task {0}={1}".format(i, r)
            time.sleep(1)

    def _consume(self):
        print "consume is running"
        for i in xrange(1,100,1):
            r=self._result_queue.get()
            print "result {0}={1}".format(i, r)


    def start(self):
        res=super(Server,self).start()
        if not self._manager:
            return False
        else:
            self._manager.start()
            self._task_queue=self._manager.get_task_queue()
            self._result_queue=self._manager.get_result_queue()

            self._pthread=threading.Thread(target=self._produce)
            self._pthread.setDaemon(True)
            self._pthread.start()
            self._cthread= threading.Thread(target=self._consume)
            self._cthread.setDaemon(True)
            self._cthread.start()


    def wait(self):
       self._pthread.join()
       self._cthread.join()

    def stop(self):
        res=super(Server,self).stop()
        if not self._manager:
            return False
        else:
            self._manager.shutdown()
            return True

if __name__=="__main__":
    server= Server()
    server.start()
    server.wait()
    server.stop()