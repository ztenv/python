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
    invalid_exchange=1      #没有这个交易所
