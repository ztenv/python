# -*- coding: utf-8 -*-
# @file   : common.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
import logging
import decimal
import traceback
from enum import Enum,unique

logger=logging.getLogger("django")

@unique
class kline_type(Enum):
    one_minute=0
    five_minute=1
    fifteen_minute=2
    thirty_minute=3
    one_hour=4
    four_hour=5
    one_day=6
    one_week=7
    one_month=8

kline_type_converter={
    "1":kline_type.one_minute.value,
    "5":kline_type.five_minute.value,
    "15":kline_type.fifteen_minute.value,
    "30":kline_type.thirty_minute.value,
    "60":kline_type.one_hour.value,
    "240":kline_type.four_hour.value,
    "D":kline_type.one_day.value,
    "W":kline_type.one_week.value,
    "M":kline_type.one_month.value
}
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
exchange_number_2_name={
    0:"binance",
    1:"huobi",
    2:"poloniex",
    3:"okex",
    4:"bitfinex",
    5:"gate.io",
    6:"bibox",
    7:"bittrex",
    8:"bitstamp",
    9:"bitMax",
    10:"kraken"
}
######################币对
#1	BTC/USDT
#2	ETH/USDT
#3	BCH/USDT
#4	LTC/USDT
#5	EOS/USDT
#6	BTC/USD
#7	ETH/USD
#8	BCH/USD
#9	LTC/USD
#10	EOS/USD
#11	XRP/USDT
#12	ETH/BTC
#13	EOS/BTC
#14	XRP/BTC
#15	LTC/BTC
contract_id_2_name={
    1	:"BTC/USDT",
    2	:"ETH/USDT",
    3	:"BCH/USDT",
    4	:"LTC/USDT",
    5	:"EOS/USDT",
    6	:"BTC/USD",
    7	:"ETH/USD",
    8	:"BCH/USD",
    9	:"LTC/USD",
    10	:"EOS/USD",
    11	:"XRP/USDT",
    12	:"ETH/BTC",
    13	:"EOS/BTC",
    14	:"XRP/BTC",
    15	:"LTC/BTC",
}



def format_number(number,precision=8):
    '''按精度格式化数字'''
    try:
        decimal.getcontext().rounding=decimal.ROUND_HALF_UP
        res=format(decimal.Decimal(str(number)),'.{0}f'.format(precision))
        return float(res)
    except Exception as ee:
        logger.warning("{0},number={1}".format(str(ee),number))
        logger.warning(traceback.format_exc())
        return number

if __name__=="__main__":

    print(format_number('0.28125',precision=1))
    print(format_number('0.28125',precision=2))
    print(format_number('0.28125',precision=3))
    print(format_number('0.28125',precision=4))
    print(format_number('0.2812528125',precision=8))
    print(format_number('0.2812528125',precision=9))
