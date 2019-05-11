#!/usr/bin/python3
# -*- coding: utf-8 -*-
# @file   : sub_models.py
# @author : shlian
# @date   : 2019/5/11
# @version: 1.0
# @desc   :
from kline.models import one_min_kline,kline

########################################火币交易所模型##################################################################
class huobi_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='huobi_1m_kline'
class huobi_kline(kline):
    class Meta(kline.Meta):
        db_table='huobi_kline'


