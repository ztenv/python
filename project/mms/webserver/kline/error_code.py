# -*- coding: utf-8 -*-
# @file   : error_code.py
# @author : shlian
# @date   : 2019/5/10
# @version: 1.0
# @desc   :
from enum import Enum,unique

@unique
class error_code(Enum):
    system_error=-1         #系统错误
    ok=0                    #成功
    empty_result=1          #结果为空
    invalid_exchange=2      #没有这个交易所
    kline_table_not_exist=3 #exchange对应的kline表不存在
    db_error=4
    invalid_args=5
