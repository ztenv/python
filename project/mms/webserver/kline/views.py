from django.shortcuts import render

# Create your views here.
import logging
import traceback
from django.http import HttpResponse,HttpRequest
from kline.biz.base_service import base_service
from kline.biz.realtime_service import realtime_service
from kline.biz.basic_info_service import basic_info_service
from kline.biz.exceptions import *

bs=base_service()
rs=realtime_service()
bis=basic_info_service()

logger=logging.getLogger("django")

def one_min_kline(request):
    try:
        if request.method=="GET":
            args={"exchange_id":None,"contract_id":None,"time_from":None,"time_to":None}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=bs.query_1m_kline(exchange_id=args.get("exchange_id"),contract_id=args.get("contract_id"),
                                  time_from=args.get("time_from"),time_to=args.get("time_to"))
            return HttpResponse(res.dumps())
        elif request.method=="POST":
            args={"exchange_id":None,"contract_id":None,"timestamp":None,"high_price":None,"open_price":None,
                  "low_price":None,"close_price":None,"volume":None}
            for key in args.keys():
                value=request.POST.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=bs.append_1m_kline(exchange_id=args.get("exchange_id"),contract_id=args.get("contract_id"),
                                   timestamp=args.get("timestamp"),high_price=args.get("high_price"),
                                   open_price=args.get("open_price"),low_price=args.get("low_price"),
                                   close_price=args.get("close_price"),volume=args.get("volume"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())

    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def kline(request):
    '''5,10,15,30,60,日K,周K'''
    try:
        if request.method=="GET":
            args={"exchange_id":None,"contract_id":None,"time_from":None,"time_to":None,"kline_type":None}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=bs.query_kline(exchange_id=args.get("exchange_id"),contract_id=args.get("contract_id"),
                               time_from=args.get("time_from"),time_to=args.get("time_to"),kline_type=args.get("kline_type"))
            return HttpResponse(res.dumps())
        elif request.method=="POST":
            args={"exchange_id":None,"contract_id":None,"timestamp":None,"high_price":None,"open_price":None,
                  "low_price":None,"close_price":None,"volume":None,"kline_type":None}
            for key in args.keys():
                value=request.POST.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=bs.append_kline(exchange_id=args.get("exchange_id"),contract_id=args.get("contract_id"),
                                timestamp=args.get("timestamp"),high_price=args.get("high_price"),
                                open_price=args.get("open_price"),low_price=args.get("low_price"),
                                close_price=args.get("close_price"),volume=args.get("volume"),kline_type=args.get("kline_type"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def realtime_kline(request):
    try:
        if request.method=="GET":
            args={"exchange_id":None,"contract_id":None,"kline_type":None}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=rs.get_realtime_kline(exchange_id=args.get("exchange_id"),contract_id=args.get("contract_id"),
                               kline_type=args.get("kline_type"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def trade_history(request):
    try:
        if request.method=="GET":
            args={"exchange_id_group":None,"contract_id":None,"timestamp":0}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=rs.get_trade_history(exchange_id_group=args.get("exchange_id_group"),contract_id=args.get("contract_id"),
                                     timestamp=args.get("timestamp"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def ticker_info(request):
    try:
        if request.method=="GET":
            args={"exchange_id":None,"contract_id":None}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=rs.get_ticker_info(exchange_id=args.get("exchange_id"),contract_id=args.get("contract_id"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def all_ticker_info(request):
    try:
        if request.method=="GET":
            args={"contract_id":None}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=rs.get_all_ticker_info(contract_id=args.get("contract_id"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def orderbook(request):
    try:
        if request.method=="GET":
            args={"contract_id":None,"exchange_id_group":None,"decimals":None}
            for key in args.keys():
                value=request.GET.get(key)
                if value is None or len(value)==0:
                    raise InvalidException("Invalid argument:{0},the value is None or empty".format(key))
                args[key]=value
            res=rs.get_orderbook(args.get("contract_id"),args.get("exchange_id_group"),args.get("decimals"))
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def load_contract_info(request):
    try:
        if request.method=="GET":
            res=bis.load_contract_info()
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def load_exchange_info(request):
    try:
        if request.method=="GET":
            res=bis.load_exchange_info()
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except ResultException as ee:
        call_stack=traceback.format_exc()
        logger.warning(call_stack)
        ee.result.call_stack=call_stack
        return HttpResponse(ee.result.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

