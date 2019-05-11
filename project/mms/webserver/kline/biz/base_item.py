# -*- coding: utf-8 -*-
# @file   : base_item.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
import logging
from django.db.models import Q
from kline.result import result
from kline.biz.table_factory import table_factory
from kline.error_code import error_code
from kline import common

logger=logging.getLogger("django")

class base_item(object):
    def __init__(self):
        self._table_factory=table_factory()

    def query_1m_kline(self,exchange_id,time_from,time_to):
        res=result()
        kline_tables=self._table_factory.get(exchange_id)
        if kline_tables is None:
            res.code=error_code.kline_table_not_exist
            res.msg="{0} kline table not exists".format(exchange_id)
            return res

        con=Q()
        con.connector="and"
        con.children.append(Q(timestamp__gte=time_from))
        con.children.append(Q(timestamp__lte=time_to))
        record_set=kline_tables[0].objects.filter(con).order_by("timestamp")
        data=[]
        for item in record_set:
            data.append([item.timestamp,item.contract_id,common.format_number(item.high),common.format_number(item.open),
                         common.format_number(item.low),common.format_number(item.close),common.format_number(item.volume)])

        res.code=error_code.ok
        res.msg="ok" if len(data)>0 else "查询结果为空"
        res.data=data
        return res

    def query_kline(self,exchange_id,time_from,time_to,kline_type):
        res=result()
        kline_tables=self._table_factory.get(exchange_id)
        if kline_tables is None:
            res.code=error_code.kline_table_not_exist
            res.msg="{0} kline table not exists".format(exchange_id)
            return res

        con=Q()
        con.connector="and"
        con.children.append(Q(kline_type=kline_type))
        con.children.append(Q(timestamp__gte=time_from))
        con.children.append(Q(timestamp__lte=time_to))
        record_set=kline_tables[1].objects.filter(con).order_by("timestamp")
        data=[]
        for item in record_set:
            data.append([item.timestamp,item.contract_id,common.format_number(item.high),common.format_number(item.open),
                         common.format_number(item.low),common.format_number(item.close),common.format_number(item.volume),
                         item.kline_type])

        res.code=error_code.ok
        res.msg="ok" if len(data)>0 else "查询结果为空"
        res.data=data
        return res

    def append_one_min_kline(self,exchange_id,timestamp,contract_id,high_price,open_price,low_price,close_price,volume):
        pass
    def append_kline(self):
        pass
