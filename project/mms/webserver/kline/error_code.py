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
    pok=1                   #部分ok
    empty_result=2          #结果为空
    invalid_exchange=3      #没有这个交易所
    kline_table_not_exist=4 #exchange对应的kline表不存在
    db_error=5              #数据库错误
    invalid_args=6          #非法的参数
