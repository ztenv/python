# -*- coding: utf-8 -*-
# @file   : model_factory.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
from kline.biz.sub_models import *

#############################
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

class table_factory(object):
    def __init__(self):
        self._table={
            0:(binance_one_min_kline,binance_kline),
            1:(huobi_one_min_kline,huobi_kline),
            #2:(poloniex_one_min_kline,poloniex_kline),
            3:(okex_one_min_kline,okex_kline),
            #4:(bitfinex_one_min_kline,bitfinex_kline),
            #5:(gate.io_one_min_kline,gate.io_kline),
            #6:(bibox_one_min_kline,bibox_kline),
            #7:(bittrex_one_min_kline,bittrex_kline),
            #8:(bitstamp_one_min_kline,bitstamp_kline),
            #9:(bitMax_one_min_kline,bitMax_kline),
            #10:(kraken_one_min_kline,kraken_kline),
        }

    def get(self,exchange_id):
        return self._table.get(int(exchange_id),None)