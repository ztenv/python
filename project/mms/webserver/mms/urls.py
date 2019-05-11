"""mms URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from django.http import HttpRequest,HttpResponse,QueryDict
import kline.views as mms_view

def get_urls_info(request):
    import json
    urls={}
    for item in urlpatterns:
        func_name="{0}".format(item.lookup_str)
        func_name=func_name[func_name.rfind(".")+1:]
        urls["{0}".format(item.pattern)]=func_name
    return HttpResponse(json.dumps(urls,ensure_ascii=False))

urlpatterns = [
    path('help', get_urls_info),
    path('quote/kline/oneminute',mms_view.one_min_kline),
    path('quote/kline',mms_view.kline)
]
