# -*- coding: utf-8 -*-
# @file   : result.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
import json
from kline.error_code import error_code
import datetime

class result(object):
    def __init__(self,code=error_code.system_error,msg="system error",data={},call_stack=""):
        self._code=code.value
        self._msg=msg
        self._data=data
        self._call_stack=call_stack

    @property
    def code(self):
        return self._code
    @code.setter
    def code(self,new_code):
        self._code=new_code.value

    @property
    def msg(self):
        return self._msg
    @msg.setter
    def msg(self,new_msg):
        self._msg=new_msg

    @property
    def data(self):
        return self._data
    @data.setter
    def data(self,data):
        self._data=data

    @property
    def call_stack(self):
        return self._call_stack
    @call_stack.setter
    def call_stack(self,new_call_stack):
        self._call_stack=new_call_stack

    def dumps(self):
        return json.dumps({"code":self._code,"msg":self._msg,"data":self._data,"call_stack":self._call_stack},
                          ensure_ascii=False)

if __name__=="__main__":
    r=result()
    r.call_stack="aa"
    print(r.call_stack)

    print(r.dumps())

    r=result(data={"name":"shlian","age":100})
    print(r.dumps())

    r=result(data=[{"name":"shlian","age":100},{"name":"test","age":20}])
    print(r.dumps())

    import time
    print(datetime.datetime.fromtimestamp(1520611200).strftime("%Y-%m-%d %H:%M:%S"))
