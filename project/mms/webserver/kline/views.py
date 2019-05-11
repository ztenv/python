from django.shortcuts import render

# Create your views here.
import logging
import traceback
from django.http import HttpResponse,HttpRequest
from kline.error_code import error_code
from kline.result import result
from kline.biz.base_item import base_item

query_service=base_item()

logger=logging.getLogger("django")

def one_min_kline(request):
    try:
        if request.method=="GET":
            exchange_id=request.GET.get("exchange_id")
            contract_id=request.GET.get("contract_id")
            time_from=request.GET.get("time_from")
            time_to=request.GET.get("time_to")
            res=query_service.query_1m_kline(exchange_id=exchange_id,contract_id=contract_id,time_from=time_from,time_to=time_to)
            return HttpResponse(res.dumps())
        elif request.method=="POST":
            exchange_id=request.POST.get("exchange_id")
            contract_id=request.POST.get("contract_id")
            timestamp=request.POST.get("timestamp")
            high_price=request.POST.get("high_price")
            open_price=request.POST.get("open_price")
            low_price=request.POST.get("low_price")
            close_price=request.POST.get("close_price")
            volume=request.POST.get("volume")
            res=query_service.append_one_min_kline(exchange_id=exchange_id,contract_id=contract_id,timestamp=timestamp,
                                                   high_price=high_price,open_price=open_price,low_price=low_price,
                                                   close_price=close_price,volume=volume)
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())

def kline(request):
    '''5,10,15,30,60,日K,周K'''
    try:
        if request.method=="GET":
            exchange_id=request.GET.get("exchange_id")
            contract_id=request.GET.get("contract_id")
            time_from=request.GET.get("time_from")
            time_to=request.GET.get("time_to")
            kline_type=request.GET.get("kline_type")
            res=query_service.query_kline(exchange_id=exchange_id,contract_id=contract_id,time_from=time_from,
                                          time_to=time_to,kline_type=kline_type)
            return HttpResponse(res.dumps())
        elif request.method=="POST":
            exchange_id=request.POST.get("exchange_id")
            contract_id=request.POST.get("contract_id")
            timestamp=request.POST.get("timestamp")
            kline_type=request.POST.get("kline_type")
            high_price=request.POST.get("high_price")
            open_price=request.POST.get("open_price")
            low_price=request.POST.get("low_price")
            close_price=request.POST.get("close_price")
            volume=request.POST.get("volume")
            res=query_service.append_kline(exchange_id=exchange_id,contract_id=contract_id,timestamp=timestamp,
                                                   high_price=high_price,open_price=open_price,low_price=low_price,
                                                   close_price=close_price,volume=volume,kline_type=kline_type)
            return HttpResponse(res.dumps())
        else:
            res=result(code=error_code.invalid_request,msg="非法的请求")
            return HttpResponse(res.dumps())
    except Exception as ee:
        call_stack=traceback.format_exc()
        logger.error(call_stack)
        return HttpResponse(result(msg=str(ee),call_stack=call_stack,data=[]).dumps())


