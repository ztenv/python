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

class bitfinex_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='bitfinex_1m_kline'
class bitfinex_kline(kline):
    class Meta(kline.Meta):
        db_table='bitfinex_kline'

class gateio_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='gate.io_1m_kline'
class gateio_kline(kline):
    class Meta(kline.Meta):
        db_table='gate.io_kline'

class bibox_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='bibox_1m_kline'
class bibox_kline(kline):
    class Meta(kline.Meta):
        db_table='bibox_kline'

class bittrex_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='bittrex_1m_kline'
class bittrex_kline(kline):
    class Meta(kline.Meta):
        db_table='bittrex_kline'

class bitstamp_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='bitstamp_1m_kline'
class bitstamp_kline(kline):
    class Meta(kline.Meta):
        db_table='bitstamp_kline'

class bitMax_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='bitMax_1m_kline'
class bitMax_kline(kline):
    class Meta(kline.Meta):
        db_table='bitMax_kline'

class kraken_one_min_kline(one_min_kline):
    class Meta(one_min_kline.Meta):
        db_table='kraken_1m_kline'
class kraken_kline(kline):
    class Meta(kline.Meta):
        db_table='kraken_kline'

