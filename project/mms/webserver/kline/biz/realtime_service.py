# -*- coding: utf-8 -*-
# @file   : realtime_service.py
# @author : shlian
# @date   : 2019/5/23
# @version: 1.0
# @desc   :
import json
import traceback
import logging
import datetime
from kline.redis_helper import redis_helper
from kline.common import front_kline_2_db_kline,db_kline_2_front_kline
from kline.result import ec_result
from kline.error_code import error_code
from kline.biz.exceptions import *

logger=logging.getLogger("django")

class realtime_service(object):
    def __init__(self):
        self._redis=redis_helper()

    def get_realtime_kline(self,exchange_id,contract_id,kline_type):
        res=ec_result(contract_id=contract_id, exchange_id=exchange_id, message_type="kline_realtime")
        kline_type=front_kline_2_db_kline.get(kline_type, "")
        #{
        #"exchange_id": 1, // 交易所编号
        #"contract_id": 1, // 币对编号
        #"time": 1545204674423, // 时间戳
        #"kline_type": "1m", // 时间级别编号
        #"open_price": "73.0", // 开盘价
        #"high_price": "74.0", // 最高价
        #"low_price": "71.0", // 最低价
        #"close_price": "72.0", // 收盘价
        #"volume": "15.12345", // 成交量
        #}

        #data={"exchange_id":int(exchange_id),"contract_id":int(contract_id),"time":datetime.datetime.now().timestamp(),
        #      "kline_type":kline_type,"high_price":100.00,"open_price":10,"low_price":5,"close_price":50,"volume":15.123456}
        #self._redis.set("rt_kline.{0}.{1}.{2}".format(exchange_id,contract_id,kline_type),
        #                json.dumps(data,ensure_ascii=False),expirre_sec=36000000)

        kline_res=self._redis.get("rt_kline.{0}.{1}.{2}".format(exchange_id,contract_id,kline_type))
        if kline_res.data is not None:
            data=json.loads(kline_res.data)
            data["kline_type"]=db_kline_2_front_kline.get(int(data.get("kline_type")))
            res.code=error_code.ok
            res.msg="ok"
            res.data=data
        else:
            res.code=error_code.empty_result
            res.msg="查询结果为空"
            res.data={}
        return res

    def get_trade_history(self,contract_id,exchange_id_group):
        res=ec_result(contract_id=contract_id,exchange_id=exchange_id_group,message_type="trade_history",data=[])
        #{
        #"exchange_id": 1, // 交易所编号
        #"contract_id": 1, // 币对名称
        #"time": 1545204674423, // 时间戳
        #"trade_price": "73.0", // 成交价
        #"trade_volume": "1.91", // 成交量
        #"taker_side": 1 // 主动成交方向
        #}
        exchange_list=exchange_id_group.split(",")
        data=[]
        for item in exchange_list:
            try:
                #self._redis.set("trade.{0}.{1}".format(item,contract_id),json.dumps({
                #    "exchange_id":item,"contract_id":contract_id,"time":datetime.datetime.now().timestamp(),
                #    "trade_price":73.0,"trade_volume":55,"taker_side":1
                #},ensure_ascii=False),expirre_sec=864000)
                trade_history=self._redis.get("trade.{0}.{1}".format(item,contract_id))
                if trade_history.data is not None:
                    data.append(json.loads(trade_history.data))
                else:
                    res.code=error_code.pok
            except Exception as ee:
                res.call_stack=traceback.format_exc()
                logger.error(str(ee))
                logger.error(res.call_stack)
        res.code=(error_code.ok if len(data)==len(exchange_list) else error_code.pok) if len(data)>0 else error_code.empty_result
        res.msg=("ok" if len(data)==len(exchange_list) else "pok") if len(data)>0 else "查询结果为空"
        res.data=data
        return res
