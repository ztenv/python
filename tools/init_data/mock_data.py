# -*- coding: utf-8 -*-
# @file   : mock_data.py
# @author : shlian
# @date   : 2019/8/13
# @version: 1.0
# @desc   :
import cx_Oracle
import signal
import traceback
import datetime
from multiprocessing import Process
import os
import sys

sub_process_list=[]

class mock_data_process(Process):
    def __init__(self,fund_id,old_date,new_date):
        Process.__init__(self)
        self._fund_id=fund_id
        self._old_date=old_date
        self._new_date=new_date

    def run(self):
        start_time=datetime.datetime.now().timestamp()
        db=cx_Oracle.connect("trade","trade",'47.111.134.208:1521/yewu')
        print("the oracle version is {0}".format(db.version))

        cursor=db.cursor()
        try:
            cursor.execute("update tfundstock t set t.l_date = {0} where t.l_fund_id={1} and t.l_date={2}".format(self._fund_id,self._new_date,self._old_date))
            cursor.execute("update tfundasset t set t.l_date = {0} where t.l_fund_id={1} and t.l_date={2}".format(self._fund_id,self._new_date,self._old_date))
            db.commit()
        except Exception as ee:
            traceback.format_exc()

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
    signal.signal(signal.SIGINT,sig_handler)
    signal.signal(signal.SIGTERM,sig_handler)

    #判断参数个数是否合法
    if len(sys.argv)!=3:
        print("usage:{0} old_date new_date")
        exit(0)

    old_date=sys.argv[1] #取第二个参数，old_date
    new_date=sys.argv[2] #取第三个参数，new_date

    try:
        for index in range(0,1):
            p=mock_data_process()
            p.start()
            sub_process_list.append(p)
    except Exception as ee:
        traceback.format_exc()

    try:
        for item in sub_process_list:
            item.join()
    except Exception as ee:
        traceback.format_exc()

