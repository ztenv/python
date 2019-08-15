# -*- coding: utf-8 -*-
# @file   : kafka_consumer.py
# @author : shlian
# @date   : 2019/8/14
# @version: 1.0
# @desc   :
import json
from kafka import KafkaConsumer
from multiprocessing import Process
import os
import datetime
import sys
import traceback

class base_kafka_consumer(Process):
    def __init__(self,topic,kafka_servers):
        Process.__init__(self)
        self._topic=topic
        self._kafka_servers=kafka_servers

class dsg_consumer(base_kafka_consumer):
    def __init__(self,topic,kafka_servers):
        base_kafka_consumer.__init__(self,topic,kafka_servers)
    def run(self):
        print("sub process {0} start".format(os.getpid()))
        with open("dsg_{0}_{1}.txt".format(os.getpid(),self._topic),mode="w") as f:
            kc=KafkaConsumer(self._topic,bootstrap_servers=self._kafka_servers)
            count=0
            for msg in kc:
                try:
                    consume_time=datetime.datetime.now().timestamp()
                    data=json.loads(msg.value)
                    record_timestamp=int(msg.timestamp)/1000.0
                    #current_ts=datetime.datetime.strptime(data.get("CURRENT_TS"),"%Y-%m-%d %H:%M:%S.%f").timestamp()
                    data=data.get("after")
                    #update_time=datetime.datetime.strptime(data.get("UPDATE_TIME"),"%Y-%m-%d %H:%M:%S.%f").timestamp()
                    vcs_time=data.get("vcs_timestamp")
                    vcs_time=datetime.datetime.strptime(vcs_time[:len(vcs_time)-3],"%Y-%m-%d %H:%M:%S.%f").timestamp()
                    f.write("{0},{1}\n".format(consume_time,record_timestamp-vcs_time))#,consume_time-vcs_time))
                    count+=1
                    if count%10000==0:
                        print("vcs_time={0},record_timestamp={1},consume_time={2},t1={3},t2={4}".format(
                        vcs_time,record_timestamp,consume_time,record_timestamp-vcs_time,consume_time-vcs_time))
                except Exception as ee:
                    traceback.format_exc()

class i2active_consumer(base_kafka_consumer):
    def __init__(self,topic,kafka_servers):
        base_kafka_consumer.__init__(self,topic,kafka_servers)
    def run(self):
        print("sub process {0} start".format(os.getpid()))
        with open("i2active_{0}_{1}.txt".format(os.getpid(),self._topic),mode="w") as f:
            count=0
            kc=KafkaConsumer(self._topic,bootstrap_servers=self._kafka_servers)
            for msg in kc:
                try:
                    consume_time=datetime.datetime.now().timestamp()
                    record_timestamp=int(msg.timestamp)/1000.0
                    data=json.loads(msg.value)
                    scntime=int(data.get("scntime"))
                    data=data.get("after")
                    vcs_time=data.get("vcs_timestamp".upper())
                    vcs_time=datetime.datetime.strptime(vcs_time[:len(vcs_time)-3],"%Y-%m-%d %H:%M:%S.%f").timestamp()
                    f.write("{0},{1}\n".format(consume_time,record_timestamp-vcs_time))
                    count+=1
                    if count%10000==0:
                        print("vcs_time={0},record_timestamp={1},consume_time={2},t1={3},t2={4}".format(
                        vcs_time,record_timestamp,consume_time,record_timestamp-vcs_time,consume_time-vcs_time))
                except Exception as ee:
                    traceback.format_exc()

class ogg_consumer(base_kafka_consumer):
    def __init__(self,topic,kafka_servers):
        base_kafka_consumer.__init__(self,topic,kafka_servers)
    def run(self):
        print("sub process {0} start".format(os.getpid()))
        with open("ogg_{0}_{1}.txt".format(os.getpid(),self._topic),mode="w") as f:
            count=0;
            kc=KafkaConsumer(self._topic,bootstrap_servers=self._kafka_servers)
            for msg in kc:
                try:
                    consume_time=datetime.datetime.now().timestamp()
                    data=json.loads(msg.value)
                    scntime=int(data.get("scntime"))
                    data=data.get("after")
                    vcs_time=data.get("vcs_timestamp".upper())
                    vcs_time=datetime.datetime.strptime(vcs_time[:len(vcs_time)-3],"%Y-%m-%d %H:%M:%S.%f").timestamp()
                    f.write("{0},{1}\n".format(consume_time,consume_time-vcs_time))
                    count+=1
                    if count%10000==0:
                        print("vcs_time={0},scntime={1},consume_time={2},t1={3},t2={4}".format(
                            vcs_time,scntime,consume_time,scntime-vcs_time,consume_time-vcs_time))
                except Exception as ee:
                    traceback.format_exc()

if __name__=="__main__":
    if len(sys.argv)!=4:
        print("usage:{0} factory kafka_host:port topic\n factory=[dsg、i2active、ogg]".format(sys.argv[0]))
        exit(0)

    factory=sys.argv[1]
    bootstrap_servers=sys.argv[2]
    topic=sys.argv[3]

    print(factory)

    if factory=="dsg":
        kc=dsg_consumer(topic,bootstrap_servers)
    elif factory=="i2active":
        kc=i2active_consumer(topic,bootstrap_servers)
    elif factory=="ogg":
        kc=ogg_consumer(topic,bootstrap_servers)
    kc.start()
    kc.join()
