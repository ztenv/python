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
run_flag=True
sub_process_list=[]

class mock_data_process(Process):
    def __init__(self,count=100000):
        Process.__init__(self)
        self._count=count

    def run(self):
        start_time=datetime.datetime.now().timestamp()
        db=cx_Oracle.connect("scott","xc_ogg_2019",'47.110.149.45:1521/orcl')
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
            except Exception as ee:
                traceback.format_exc()
            if count % 1000==0:
                print("{0} process insert {1} records,use:{2} seconds".format(os.getpid(),count,datetime.datetime.now().timestamp()-start_time))
            if count>=self._count:
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
        p.terminate()

if __name__=="__main__":
    if len(sys.argv)!=3:
        print("usage:{0} sub_process_number mock_data_count")
        exit(0)
    sub_process_number=int(sys.argv[1])
    if sub_process_number<=1:
        sub_process_number=1
    mock_data_count=int(sys.argv[2])
    if mock_data_count<=1:
        mock_data_count=1

    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)
    try:
        for index in range(0,sub_process_number):
            p=mock_data_process(mock_data_count)
            p.start()
            sub_process_list.append(p)
    except Exception as ee:
        traceback.format_exc()

    try:
        for item in sub_process_list:
            item.join()
    except Exception as ee:
        traceback.format_exc()

