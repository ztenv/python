#!/usr/bin/python3
# -*- coding: utf-8 -*-
# @file   : exceptions.py
# @author : shlian
# @date   : 2019/5/11
# @version: 1.0
# @desc   :
from kline.result import result
from kline.error_code import error_code

class ResultException(Exception):
    def __init__(self,code,msg):
        self.result=result(code=code,msg=msg)

class InvalidException(ResultException):
    def __init__(self,msg):
        ResultException.__init__(self,code=error_code.invalid_args,msg=msg)

class TableNotExistException(Exception):
    def __init__(self,msg):
        ResultException.__init__(self,msg,code=error_code.kline_table_not_exist)
