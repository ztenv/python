# -*- coding: utf-8 -*-
# @file   : oracle_base_task.py
# @author : shlian
# @date   : 2019/8/15
# @version: 1.0
# @desc   :
import abc
import traceback
from base_task import base_task
import cx_Oracle

class oracle_base_task(base_task):
    def __init__(self,task_name,user,pwd,orcl_info):
        base_task.__init__(self,task_name=task_name)
        self._user=user
        self._pwd=pwd
        self._orcl_info=orcl_info
        self._conn=None
        self._cursor=None

    def init(self):
        try:
            self._conn=cx_Oracle.connect(self._user,self._pwd,self._orcl_info) #'47.111.134.208:1521/yewu')
            print("oracle version:{0}".format(self._conn.version))
            self._cursor=self._conn.cursor()
        except Exception as ee:
            print(str(ee))
            traceback.format_exc()

    @abc.abstractmethod
    def run(self):
        base_task.run(self)

    def de_init(self):
        try:
            if self._cursor is not None:
                self._cursor.close()
            if self._conn is not None:
                self._conn.close()
        except Exception as ee:
            print(str(ee))
            traceback.format_exc()

    @property
    def connection(self):
        return self._conn
    @property
    def cursor(self):
        return self._cursor
