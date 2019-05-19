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
    five_minute=0
    ten_minute=1
    fifteen_minute=2
    thirty_minute=3
    one_hour=4
    one_day=5
    one_week=6


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