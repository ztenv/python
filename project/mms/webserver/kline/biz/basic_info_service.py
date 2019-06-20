#!/usr/bin/python3
# -*- coding: utf-8 -*-
# @file   : basic_info_service.py
# @author : shlian
# @date   : 2019/6/19
# @version: 1.0
# @desc   :
from kline.result import result
from kline.error_code import error_code
from kline.models import contract_info,exchange_info

class basic_info_service(object):
    def __init__(self):
        pass

    def load_contract_info(self):
        res=result()
        items=contract_info.objects.all()
        data=[]
        for item in items:
            data.append([item.NO,item.name,item.small_icon,item.big_icon])
        res.data=data
        res.code=error_code.ok if len(data)>0 else error_code.empty_result
        res.msg="ok" if len(data)>0 else "empty result"
        return res

    def load_exchange_info(self):
        res=result()
        items=exchange_info.objects.all()
        data=[]
        for item in items:
            data.append([item.NO,item.name,item.small_icon,item.big_icon])
        res.data=data
        res.code=error_code.ok if len(data)>0 else error_code.empty_result
        res.msg="ok" if len(data)>0 else "empty result"
        return res

