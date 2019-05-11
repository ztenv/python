# -*- coding: utf-8 -*-
# @file   : base_item.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
import logging
from django.db.models import Q
from kline.biz.table_factory import table_factory
from kline import common
from kline.biz.exceptions import *

logger=logging.getLogger("django")

class base_service(object):
    def __init__(self):
        self._table_factory=table_factory()

    def query_1m_kline(self,exchange_id,contract_id,time_from,time_to):
        '''查询1分钟的k-line'''
        res=result()
        kline_tables=self._table_factory.get(exchange_id)
        if kline_tables is None:
            raise TableNotExistException("{0} one_min_kline table not exists.".format(exchange_id))

        con=Q()
        con.connector="and"
        con.children.append(Q(timestamp__gte=time_from))
        con.children.append(Q(timestamp__lte=time_to))
        con.children.append(Q(contract_id=contract_id))
        record_set=kline_tables[0].objects.filter(con).order_by("timestamp")
        data=[]
        for item in record_set:
            data.append([item.timestamp,item.contract_id,common.format_number(item.high),common.format_number(item.open),
                         common.format_number(item.low),common.format_number(item.close),common.format_number(item.volume)])

        res.code=error_code.ok if len(data)>0 else error_code.empty_result
        res.msg="ok" if len(data)>0 else "查询结果为空"
        res.data=data
        return res

    def query_kline(self,exchange_id,contract_id,time_from,time_to,kline_type):
        '''查询5、10、15、30、日K、周K'''
        res=result()
        kline_tables=self._table_factory.get(exchange_id)
        if kline_tables is None:
            raise TableNotExistException("{0} kline table not exists".format(exchange_id))

        con=Q()
        con.connector="and"
        con.children.append(Q(kline_type=kline_type))
        con.children.append(Q(timestamp__gte=time_from))
        con.children.append(Q(timestamp__lte=time_to))
        con.children.append(Q(contract_id=contract_id))
        record_set=kline_tables[1].objects.filter(con).order_by("timestamp")
        data=[]
        for item in record_set:
            data.append([item.timestamp,item.contract_id,common.format_number(item.high),common.format_number(item.open),
                         common.format_number(item.low),common.format_number(item.close),common.format_number(item.volume),
                         item.kline_type])

        res.code=error_code.ok if len(data)>0 else error_code.empty_result
        res.msg="ok" if len(data)>0 else "查询结果为空"
        res.data=data
        return res

    def append_1m_kline(self,exchange_id,contract_id,timestamp,high_price,open_price,low_price,close_price,volume):
        '''append one minute kline'''
        res=result()
        kline_tables=self._table_factory.get(exchange_id)
        if kline_tables is None:
            raise TableNotExistException("{0} one_min_kline table not exists.".format(exchange_id))

        one_minute_kline_table=kline_tables[0]
        record=one_minute_kline_table.objects.update_or_create(contract_id=contract_id,timestamp=timestamp,high=high_price,
                                                        open=open_price,low=low_price,close=close_price,volume=volume)
        res.code=error_code.ok if record is not None else error_code.db_error
        res.msg="ok" if record is not None else "db error"
        return res

    def append_kline(self,exchange_id,contract_id,timestamp,kline_type,high_price,open_price,low_price,close_price,volume):
        '''append kline'''
        res=result()
        kline_tables=self._table_factory.get(exchange_id)
        if kline_tables is None:
            raise TableNotExistException("{0} kline table not exists".format(exchange_id))

        one_minute_kline_table=kline_tables[1]
        kline_type=int(kline_type)
        record=one_minute_kline_table.objects.update_or_create(contract_id=contract_id,timestamp=timestamp,
                                                               kline_type=kline_type,high=high_price, open=open_price,
                                                               low=low_price,close=close_price,volume=volume)
        res.code=error_code.ok if record is not None else error_code.db_error
        res.msg="ok" if record is not None else "db error"
        return res

