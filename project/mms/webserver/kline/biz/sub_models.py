#!/usr/bin/python3
# -*- coding: utf-8 -*-
# @file   : sub_models.py
# @author : shlian
# @date   : 2019/5/11
# @version: 1.0
# @desc   :
from kline.models import one_min_kline,kline


#0	binance
#1	huobi
#2	poloniex
#3	okex
#4	bitfinex
#5	gate.io
#6	bibox
#7	bittrex
#8	bitstamp
#9	bitMax
#10	kraken

#############################################交易所模型##################################################################
class binance_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='binance_1m_kline{0}'
class binance_kline(kline):
    class Meta(kline.Meta):
        db_table='binance_kline'

class huobi_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='huobi_1m_kline{0}'
class huobi_kline(kline):
    class Meta(kline.Meta):
        db_table='huobi_kline'

class poloniex_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='poloniex_1m_kline'
class poloniex_kline(kline):
    class Meta(kline.Meta):
        db_table='poloniex_kline'

class okex_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='okex_1m_kline'
class okex_kline(kline):
    class Meta(kline.Meta):
        db_table='okex_kline'

