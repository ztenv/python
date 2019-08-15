# -*- coding: utf-8 -*-
# @file   : mock_data.py
# @author : shlian
# @date   : 2019/8/12
# @version: 1.0
# @desc   :
import cx_Oracle
import data_factory
import signal
import traceback
import datetime
from multiprocessing import Process
import os
import sys
import time
run_flag=True
sub_process_list=[]

class config_info(object):
    def __init__(self,user="",pwd="",host="",record_count=100000,sleep_seconds=0):
        self.user=user
        self.pwd=pwd
        self.host=host
        self.record_count=record_count
        self.sleep_seconds=sleep_seconds

class mock_data_process(Process):
    def __init__(self,ci):
        Process.__init__(self)
        self._count=ci.record_count
        self._sleep_seconds=ci.sleep_seconds
        self._user=ci.user
        self._pwd=ci.pwd
        self._host=ci.host

    def run(self):
        start_time=datetime.datetime.now().timestamp()
        #db=cx_Oracle.connect("scott","xc_ogg_2019",'47.110.149.45:1521/orcl')
        print(self._user,self._pwd,self._host)
        db=cx_Oracle.connect(self._user,self._pwd,self._host)
        print(db.version)
        cursor=db.cursor()
        df=data_factory.data_factory()
        df.init(file_name="table_schema.txt",table_name="TEST20190813")
        df.process()
        count=0
        while run_flag:
            try:
                sql=df.build_insert_statement()
                cursor.execute(sql)
                db.commit()
                count+=1
                if count%1000==0 and self._sleep_seconds>0:
                    time.sleep(self._sleep_seconds)
            except Exception as ee:
                traceback.format_exc()
            if count % 10000==0:
                print("{0} process insert {1} records,use:{2} seconds".format(os.getpid(),count,datetime.datetime.now().timestamp()-start_time))
            if self._count>0 and count>=self._count:
                break

        cursor.close()
        db.close()

        stop_time=datetime.datetime.now().timestamp()
        print("{0} process run_time:{1}-{2}={3}".format(os.getpid(),stop_time,start_time,stop_time-start_time))

def sig_handler(signum, frame):
    print(signum, frame)
    global run_flag
    global sub_process_list
    run_flag = False
    for item in sub_process_list:
        item.join()

if __name__=="__main__":
    if len(sys.argv)!=7:
        print("usage:{0} user password host:port/orcl sub_process_number mock_data_count sleep_seconds")
        exit(0)
    ci=config_info()
    ci.user=sys.argv[1]
    ci.pwd=sys.argv[2]
    ci.host=sys.argv[3]
    sub_process_number=int(sys.argv[4])
    if sub_process_number<=1:
        sub_process_number=1
    ci.record_count=int(sys.argv[5])
    ci.sleep_seconds=int(sys.argv[6])
    print("user:{0} pwd:{1} host:{2} sub_process:{3} record_count:{4} sleep_seconds:{5}".format(
        ci.user,ci.pwd,ci.host,sub_process_number,ci.record_count,ci.sleep_seconds))

    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    try:
        for index in range(0,sub_process_number):
            p=mock_data_process(ci)
            p.start()
            sub_process_list.append(p)
    except Exception as ee:
        traceback.format_exc()

    try:
        for item in sub_process_list:
            item.join()
    except Exception as ee:
        traceback.format_exc()

