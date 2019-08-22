# -*- coding: utf-8 -*-
# @file   : oriental_alpha.py
# @author : shlian
# @date   : 2019/8/22
# @version: 1.0
# @desc   :
import sys
import datetime
import traceback
from base.oracle_base_task import oracle_base_task
import pysnooper

class oriental_alpha_script(oracle_base_task):
    @pysnooper.snoop()
    def __init__(self,user,pwd,orcl_info,fund_id,old_date,new_date):
        oracle_base_task.__init__(self,task_name="oriental alpha script",user=user,pwd=pwd,orcl_info=orcl_info)
        self._fund_id=fund_id
        self._old_date=old_date
        self._new_date=new_date

    @pysnooper.snoop()
    def run(self):
        oracle_base_task.run(self)
        print("sub process {0}({1}) run at {2}".format(self.task_name,self.process_id,
                                                       datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S.%f")))
        try:
            result=self.cursor.execute("select * from tfundstock")
            for record in result:
                print(record)

            result=self.cursor.execute("update fundstock set lastdate = \'{0}\' where fundid = {1} and lastdate = '{2}'"
                                       .format(self._new_date,self._fund_id,self._old_date))
            print(result)

            result=self.cursor.execute("update projectasset set lastdate =\'{0}' where fundid ={1}"
                                       .format(self._new_date,self._fund_id))
            print(result)

            result=self.cursor.execute("update stkprice   set busidate = \'{0}\' where busidate = \'{1}\' and market "+
                                       "in ('0', '1')".format(self._new_date,self._old_date))
            print(result)

            result=self.cursor.execute("update stock set lastdate = \'{0}\' where lastdate = \'{1}\' and stkid in "+
                                       "(\'000001SZ\', \'000839SZ\', \'080563SZ\', \'080585SZ\', \'082466SZ\', "+
                                       "\'600000SS\', \'600004SS\', \'600010SS\', \'600048SS\', \'600626SS\', "
                                       "\'700008SS\', \'742636SS\')".format(self._new_date,self._old_date))
            print(result)
        except Exception as ee:
            print(str(ee))
            print(traceback.format_exc())

if __name__=="__main__":
    old_date=20090109
    new_date=20190816
    fund_id=10

    if len(sys.argv)==2:
        old_date=int(sys.argv[1])
        new_date=int(sys.argv[2])

    task=oriental_alpha_script(user="trade",pwd="trade",orcl_info="47.111.134.208:1521/yewu",fund_id=fund_id,
                               old_date=old_date,new_date=new_date)
    if task.init()==True:
        task.start()
        task.join()
        task.de_init()
    else:
        print("task init error")
