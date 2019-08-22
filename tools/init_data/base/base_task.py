# -*- coding: utf-8 -*-
# @file   : base_task.py
# @author : shlian
# @date   : 2019/8/15
# @version: 1.0
# @desc   :
import abc
import os
from multiprocessing import Process

class base_task(Process):
    def __init__(self,task_name):
        Process.__init__(self)
        self._process_id=None
        self._task_name=task_name

    @abc.abstractmethod
    def init(self):
        pass

    @abc.abstractmethod
    def run(self):
        self._process_id=os.getpid()

    @abc.abstractmethod
    def de_init(self):
        pass

    @property
    def process_id(self):
        return self._process_id

    @property
    def task_name(self):
        return self._task_name
    @task_name.setter
    def task_name(self,new_name):
        self._task_name=new_name

