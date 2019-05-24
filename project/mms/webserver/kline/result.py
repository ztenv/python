# -*- coding: utf-8 -*-
# @file   : result.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
import json
from kline.error_code import error_code
import datetime
from kline.common import exchange_number_2_name,contract_id_2_name

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

class kline_result(result):
    def __init__(self,contract_id,exchange_id,message_type,code=error_code.system_error,msg="system error",data={},call_stack=""):
        result.__init__(self,code=code,msg=msg,data=data,call_stack=call_stack)
        self._contract_id=contract_id_2_name.get(int(contract_id),"N/A")
        self._exchange_id=exchange_number_2_name.get(int(exchange_id),"N/A")
        self._message_type=message_type

    @property
    def contract_id(self):
        return self._contract_id
    @contract_id.setter
    def contract_id(self,new_contract_id):
        self._contract_id=contract_id_2_name.get(int(new_contract_id),"N/A")

    @property
    def exchange_id(self):
        return self._exchange_id
    @exchange_id.setter
    def exchange_id(self,new_exchange_id):
        self._exchange_id=exchange_number_2_name.get(int(new_exchange_id),"N/A")

    @property
    def message_type(self):
        return self._message_type
    @message_type.setter
    def message_type(self,new_message_type):
        self._message_type=new_message_type

    def dumps(self):
        return json.dumps({"code":self._code,"msg":self._msg,"message_type":self._message_type,"contract_id":self._contract_id,
                           "exchange_id":self._exchange_id,"data":self._data,
                           "call_stack":self._call_stack}, ensure_ascii=False)

class history_kline_result(kline_result):
    def __init__(self,contract_id,time_interval,exchange_id,code=error_code.system_error,msg="system error",data={},call_stack=""):
        result.__init__(self,code=code,msg=msg,data=data,call_stack=call_stack)
        kline_result.__init__(self,contract_id=contract_id,exchange_id=exchange_id,message_type="history",code=code,
                              msg=msg,data=data,call_stack=call_stack)
        self._time_interval=time_interval

    @property
    def time_interval(self):
        return self._time_interval

    @time_interval.setter
    def time_interval(self,new_time_interval):
        self.time_interval=new_time_interval

    def dumps(self):
        return json.dumps({"code":self._code,"msg":self._msg,"message_type":self._message_type,"contract_id":self._contract_id,
                          "time_interval":self._time_interval,"exchange_id":self._exchange_id,"data":self._data,
                           "call_stack":self._call_stack}, ensure_ascii=False)

if __name__=="__main__":
    r=result()
    r.call_stack="aa"
    print(r.call_stack)

    print(r.dumps())

    r=result(data={"name":"shlian","age":100})
    print(r.dumps())

    r=result(data=[{"name":"shlian","age":100},{"name":"test","age":20}])
    print(r.dumps())

    r=history_kline_result(contract_id="BTC/USDT",exchange_id="okEX",time_interval="1m")
    print(r.dumps())

    import time
    print(datetime.datetime.fromtimestamp(1520611200).strftime("%Y-%m-%d %H:%M:%S"))
