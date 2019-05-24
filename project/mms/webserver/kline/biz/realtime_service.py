# -*- coding: utf-8 -*-
# @file   : realtime_service.py
# @author : shlian
# @date   : 2019/5/23
# @version: 1.0
# @desc   :
import datetime
import json
from kline.redis_helper import redis_helper
from kline.common import kline_type_converter
from kline.result import kline_result
from kline.error_code import error_code

class realtime_service(object):
    def __init__(self):
        self._redis=redis_helper()

    def get_realtime_kline(self,exchange_id,contract_id,kline_type):
        res=kline_result(contract_id=contract_id,exchange_id=exchange_id,message_type="kline_realtime")
        kline_type=kline_type_converter.get(kline_type,"")
        #"exchange_id": 1, // 交易所编号
        #"contract_id": 1, // 币对编号
        #"time": 1545204674423, // 时间戳
        #"kline_type": "1m", // 时间级别编号
        #"open_price": "73.0", // 开盘价
        #"high_price": "74.0", // 最高价
        #"low_price": "71.0", // 最低价
        #"close_price": "72.0", // 收盘价
        #"volume": "15.12345", // 成交量
        data={"exchange_id":int(exchange_id),"contract_id":int(contract_id),"time":datetime.datetime.now().timestamp(),
              "kline_type":kline_type,"high_price":100.00,"open_price":10,"low_price":5,"close_price":50,"volume":15.123456}
        str=json.dumps(data,ensure_ascii=False)
        self._redis.set("{0}.{1}.{2}".format(exchange_id,contract_id,kline_type),str,expirre_sec=86400)

        get_res=self._redis.get("{0}.{1}.{2}".format(exchange_id,contract_id,kline_type))
        if get_res.data is not None:
            data=json.loads(get_res.data)
            res.code=error_code.ok
            res.msg="ok"
            res.data=data
        else:
            res.code=error_code.empty_result
            res.msg="查询结果为空"
            res.data={}
        return res
