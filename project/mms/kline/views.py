from django.shortcuts import render

# Create your views here.
import logging
import traceback
from kline.error_code import error_code
from kline.result import result
from django.http import HttpResponse,HttpRequest
from kline.biz.base_item import base_item
query_service=base_item()

logger=logging.getLogger("django")

def query_one_min_kline(request):
    '''one minute kline'''
    try:
        if request.method=="GET":
            exchange_id=request.GET.get("exchange_id")
            time_from=request.GET.get("time_from")
            time_to=request.GET.get("time_to")
            res=query_service.query_1m_kline(exchange_id=exchange_id,time_from=time_from,time_to=time_to)
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def query_kline(request):
    '''5,10,30,60,one day,minute kline'''
    try:
        if request.method=="GET":
            exchange_id=request.GET.get("exchange_id")
            time_from=request.GET.get("time_from")
            time_to=request.GET.get("time_to")
            kline_type=request.GET.get("kline_type")
            res=query_service.query_kline(exchange_id=exchange_id,time_from=time_from,time_to=time_to,kline_type=kline_type)
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

