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
import kline.common

logger=logging.getLogger("django")

class base_item(object):
    def __init__(self):
        self._table_factory=table_factory()

    def query_1m_kline(self,exchange_id,time_from,time_to):
        res=result()
        con=Q()
        con.connector="and"
        con.children.append(Q(timestamp__gte=time_from))
        con.children.append(Q(timestamp__lte=time_to))
        record_set=self._table_factory.get(exchange_id)[0].objects.filter(con).order_by("timestamp")
        data=[]
        for item in record_set:
            data.append([item.timestamp,kline.common.format_number(item.high),kline.common.format_number(item.open),
                         kline.common.format_number(item.low),kline.common.format_number(item.close),kline.common.format_number(item.volume)])

        res.code=error_code.ok
        res.msg="ok" if len(data)>0 else "查询结果为空"
        res.data=data
        return res


    def query_kline(self,exchange_id,time_from,time_to,kline_type):
        res=result()
        con=Q()
        con.connector="and"
        con.children.append(Q(kline_type=kline_type))
        con.children.append(Q(timestamp__gte=time_from))
        con.children.append(Q(timestamp__lte=time_to))
        record_set=self._table_factory.get(exchange_id)[1].objects.filter(con).order_by("timestamp")
        data=[]
        for item in record_set:
            data.append([item.timestamp,kline.common.format_number(item.high),kline.common.format_number(item.open),
                         kline.common.format_number(item.low),kline.common.format_number(item.close),kline.common.format_number(item.volume),
                         item.kline_type])

        res.code=error_code.ok
        res.msg="ok" if len(data)>0 else "查询结果为空"
        res.data=data
        return res

