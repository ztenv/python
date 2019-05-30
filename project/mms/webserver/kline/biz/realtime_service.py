# -*- coding: utf-8 -*-
# @file   : realtime_service.py
# @author : shlian
# @date   : 2019/5/23
# @version: 1.0
# @desc   :
import json
import traceback
import logging
import decimal
from kline.common import format_number
from kline.redis_helper import redis_helper
from kline.common import front_kline_2_db_kline,db_kline_2_front_kline,exchange_number_2_name
from kline.result import ec_result
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

        #data={"exchange_id":int(exchange_id),"contract_id":int(contract_id),"time":get_timestamp(),
        #      "kline_type":kline_type,"high_price":100.00,"open_price":10,"low_price":5,"close_price":50,"volume":15.123456}
        #self._redis.set("rt_kline.{0}.{1}.{2}".format(exchange_id,contract_id,kline_type),
        #                json.dumps(data,ensure_ascii=False),expirre_sec=86400)

        kline_res=self._redis.get("rt_kline.{0}.{1}.{2}".format(exchange_id,contract_id,kline_type))
        if kline_res.data is not None and len(kline_res.data)>0:
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

    def get_trade_history(self,contract_id,exchange_id_group,timestamp):
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
        timestamp=int(timestamp)
        data={}
        for item in exchange_list:
            try:
                #for i in range(100):
                #    jsonstr=json.dumps({
                #        "exchange_id":item,"contract_id":contract_id,"time":get_timestamp(),
                #        "trade_price":73.0,"trade_volume":55+i,"taker_side":1},ensure_ascii=False)
                #    self._redis.hmset("trade.{0}.{1}".format(item,contract_id),{i:jsonstr})
                #self._redis.hmset("trade.{0}.{1}".format(item,contract_id),{"courser":0},expire_sec=86400)

                trade_history=self._redis.hget_all("trade.{0}.{1}".format(item,contract_id))
                if trade_history.data is not None and len(trade_history.data)>0:
                    th_data=[]
                    for k,v in trade_history.data.items():
                        if k!=b"cursor":
                            value=json.loads(v.decode("utf-8"))
                            if value.get("time")>=timestamp:
                                th_data.append(value)
                    th_data.sort(key=lambda ele:ele.get("time"),reverse=False)
                    data[item]=th_data
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

    def get_ticker_info(self,exchange_id,contract_id):
        #{
        #"exchange_id": 1, // 交易所编号
        #"contract_id": 1, // 币对号
        #"time": 1545204674423, // 时间戳
        #"close": "72.0", // 收盘价
        #"high": "73.0", // 最高价
        #"low": "71.0", // 最低价
        #"volume": "15.12345", // 成交量
        #"change": "2.0" // 24
        #小时涨跌幅
        #}
        res=ec_result(exchange_id=exchange_id,contract_id=contract_id,message_type="tick_24h")
        #self._redis.set("ticker.{0}.{1}".format(exchange_id,contract_id),json.dumps({
        #    "exchange_id":exchange_id,"contract_id":contract_id,"time":get_timestamp(),
        #    "close":72.0,"high":73.0,"low":71.0,"volume":15.12345,"change":2.0
        #}),expirre_sec=86400)
        data=self._redis.get("ticker.{0}.{1}".format(exchange_id,contract_id))
        if data.data is not None and len(data.data)>0:
            res.code=error_code.ok
            res.msg="ok"
            res.data=json.loads(data.data)
        else:
            res.code=error_code.empty_result
            res.msg="查询结果为空"

        return res

    def get_all_ticker_info(self,contract_id):
        res=ec_result(exchange_id="ALL",contract_id=contract_id,message_type="all_tick_24h",data=[])
        #self._redis.set("ticker.{0}.{1}".format(exchange_id,contract_id),json.dumps({
        #    "exchange_id":exchange_id,"contract_id":contract_id,"time":get_timestamp(),
        #    "close":72.0,"high":73.0,"low":71.0,"volume":15.12345,"change":2.0
        #}),expirre_sec=86400)
        for item in exchange_number_2_name.keys():
            data=self._redis.get("ticker.{0}.{1}".format(item,contract_id))
            if data.data is not None and len(data.data)>0:
                res.data.append(json.loads(data.data))

        res.code=error_code.ok if len(res.data)>0 else error_code.empty_result
        res.msg="ok" if len(res.data)>0 else "查询结果为空"
        return res

    def _merge_orderbook(self,exchange_id,contract_id,side,orderbook,books,decimals):
        for item in books:
            price=format_number(item.get('price','0'),decimals,False)
            quantity=format_number(item.get("quantity",'0'),8,False)
            if price in orderbook.keys():
                ob_item=orderbook.get(price)
                ob_item["quantity"]=format_number(decimal.Decimal(ob_item.get("quantity"))+decimal.Decimal(quantity),
                                                  decimals,False)
                exchange_quantity=ob_item.get("exchange_quantity")
                if exchange_id in exchange_quantity.keys():
                    exchange_quantity[exchange_id]=format_number(decimal.Decimal(exchange_quantity.get(exchange_id))+
                                                                 decimal.Decimal(quantity),decimals,False)
                else:
                    exchange_quantity[exchange_id]=quantity
            else:
                orderbook[price]={"contract_id":contract_id,"side":side,"price":price,"quantity":quantity,
                                  "exchange_quantity":{exchange_id:quantity}}

    def get_orderbook(self,contract_id,exchange_id_group,decimals):
        res=ec_result(exchange_id=exchange_id_group,contract_id=contract_id,message_type="orderbook",data=[])

        isnapshot=self._redis.hget_all("isnapshot.{0}".format(contract_id))
        data={}
        last_price=0
        last_price_exchnage_id=0
        timestamp=0
        if isnapshot.data is not None and len(isnapshot.data)>0:
            exchange_list=exchange_id_group.split(",")
            bid_book={}
            ask_book={}
            for item in exchange_list:
                if item.encode("utf-8") in isnapshot.data.keys():
                    v=isnapshot.data.get(item.encode("utf-8"),None)
                    ob=json.loads(v.decode("utf-8"))
                    if ob.get("timestamp")>timestamp:
                        timestamp=ob.get("timestamp")
                        last_price=format_number(ob.get("last_price"),decimals)
                        last_price_exchnage_id=ob.get("exchange_id")
                    bids=ob.get("bids",{})
                    self._merge_orderbook(exchange_id=item,contract_id=ob.get("contract_id"),side=1,orderbook=bid_book,
                                          books=bids,decimals=decimals)

                    asks=ob.get("asks",{})
                    self._merge_orderbook(exchange_id=item,contract_id=ob.get("contract_id"),side=-1,orderbook=ask_book,
                                          books=asks,decimals=decimals)
                    #按价格精度聚合

            bids=list(bid_book.values())
            bids.sort(key=lambda ele:ele.get("price"),reverse=True)
            asks=list(ask_book.values())
            asks.sort(key=lambda ele:ele.get("price"),reverse=False)
            #按价格和时间排序
            data["last_price"]=last_price
            data["last_price_exchange_id"]=last_price_exchnage_id
            data["bids"]=bids
            data["asks"]=asks

        res.code=error_code.ok
        res.msg="ok"
        res.data=data
        return res

