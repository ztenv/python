# -*- coding: utf-8 -*-
# @file   : model_factory.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
from kline.biz.sub_models import huobi_kline,huobi_one_min_kline

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
            1:(huobi_one_min_kline,huobi_kline)
        }

    def get(self,exchange_id):
        return self._table.get(int(exchange_id),None)