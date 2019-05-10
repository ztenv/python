# -*- coding: utf-8 -*-
# @file   : model_factory.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
from kline.models import *

class table_factory(object):
    def __init__(self):
        self._table={
            'huobi':(huobi_one_min_kline,huobi_kline)
        }

    def get(self,exchange_id):
        return self._table.get(exchange_id,(None,None))