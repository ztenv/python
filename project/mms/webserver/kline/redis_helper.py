# -*- coding: utf-8 -*-
# @file   : redis_helper.py
# @author : shlian
# @date   : 2019/5/23
# @version: 1.0
# @desc   :
from django.conf import settings
from kline.error_code import error_code
from kline.result import result
import os
import redis
import rediscluster
import logging

logger = logging.getLogger("django")

class redis_helper(object):
    def __init__(self):
        if settings.USE_CLUSTER is False:
            self._connections=(
                redis.Redis(host=settings.REDIS.get("master").get("ip"),port=settings.REDIS.get("master").get("port"),
                            db=0,socket_connect_timeout=2),
                redis.Redis(settings.REDIS.get("slave").get("ip"),port=settings.REDIS.get("slave").get("port"),
                            db=0,socket_connect_timeout=2)
            )
        else:
            self._connections = [rediscluster.StrictRedisCluster(
                startup_nodes=settings.REDIS_CLUSTER, skip_full_coverage_check=True, max_connections=10,
                nodemanager_follow_cluster=True, readonly_mode=True
                # decode_responses=True
            )]
        logger.info('redis connected')

    def get(self,key,expire_sec=0):
        first=True
        for conn in self._connections:
            try:
                value=conn.get(key)
                if value is not None:
                    if expire_sec>0:
                        conn.setex(key,expire_sec,value)
                    else:
                        conn.set(key,value)
                return result(code=error_code.ok,msg="ok",data=value)
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def get(self,key):
        first=True
        for conn in self._connections:
            try:
                value=conn.get(key)
                return result(code=error_code.ok,msg="ok",data=value)
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def set(self,key,value,expirre_sec=0):
        first=True
        for conn in self._connections:
            try:
                if expirre_sec>0:
                    res=conn.set(key,value,expirre_sec)
                else:
                    res=conn.set(key,value)
                return result(code=error_code.ok,msg="ok")
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def hget_all(self,key):
        first=True
        for conn in self._connections:
            try:
                value=conn.hgetall(key)
                return result(code=error_code.ok,msg="ok",data=value)
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def hget(self,key,subkey):
        first=True
        for conn in self._connections:
            try:
                value=conn.hget(key,subkey)
                return result(code=error_code.ok,msg="ok",data=value)
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def hmset(self,key,mapping,expire_sec=0):
        first=True
        for conn in self._connections:
            try:
                res=conn.hmset(key,mapping)
                if(res>0) and (expire_sec>0):
                    res=conn.expire(key,expire_sec)
                return result(code=error_code.ok,msg="ok",data={"result":res})
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def ttl(self,key):
        first=True
        for conn in self._connections:
            try:
                res=conn.ttl(key)
                return result(code=error_code.ok,msg="ok",data={"result":res})
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def delete(self,key):
        first=True
        for conn in self._connections:
            try:
                res=conn.delete(key)
                return result(code=error_code.ok,msg="ok",data={"result":res})
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def lrange(self,name,start,end):
        first=True
        for conn in self._connections:
            try:
                res=conn.lrange(name,start,end)
                return result(error_code.ok,msg="ok",data=res)
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

    def zrange(self,key,start,end):
        first=True
        for conn in self._connections:
            try:
                res=conn.zrange(key,start,end)
                return result(error_code.ok,msg="ok",data=res)
            except Exception as ee:
                if first:
                    first=False
                    logging.warning("master redis error:{0}".format(str(ee)))
                else:
                    raise ee

if __name__=="__main__":
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'webserver.settings')
    rh=redis_helper()
    print(rh.get("db").data)
    print(rh.get("aaa").data)

    print(rh.hget_all("new_000002.SZ").data)
    print(rh.hget("new_000002.SZ","askBook").data)

    print(rh.set("name","shlian",expirre_sec=30).dumps())
    print(rh.ttl("name").data.get("result"))
    print(rh.delete("name").data.get("result"))
    print(rh.ttl("name").data.get("result"))
    print(rh.hmset("shlian",{"name":"shlian","sex":"M","age":30},expire_sec=30).data.get("result"))
