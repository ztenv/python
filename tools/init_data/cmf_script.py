# -*- coding: utf-8 -*-
# @file   : trms_oracle_tasks.py
# @author : shlian
# @date   : 2019/8/15
# @version: 1.0
# @desc   :
import traceback
import datetime
from base.oracle_base_task import oracle_base_task
import pysnooper

class cmf_script(oracle_base_task):

    @pysnooper.snoop()
    def __init__(self,user,pwd,orcl_info,fund_id,old_date,new_date):
        oracle_base_task.__init__(self,task_name="cmf script",user=user,pwd=pwd,orcl_info=orcl_info)
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

            self.cursor.execute("update tfundstock t set t.l_date = {0} where t.l_fund_id={1} and t.l_date={2}".
                                format(self._fund_id,self._new_date,self._old_date))
            self.cursor.execute("update tfundasset t set t.l_date = {0} where t.l_fund_id={1} and t.l_date={2}".
                                format(self._fund_id,self._new_date,self._old_date))

            self.cursor.execute("update tstockinfo t set t.l_date = {0} where t.vc_inter_code in (\'600000SS\',\'600016SS\',\
                                \'600019SS\', \'600028SS\', \'600029SS\', \'600030SS\', \'600031SS\', \'600036SS\',\
                                \'600048SS\', \'600050SS\', \'600104SS\', \'600196SS\', \'600276SS\', \'600309SS\',\
                                \'600340SS\', \'600519SS\', \'600585SS\', \'600690SS\', \'600703SS\', \'600837SS\',\
                                \'600887SS\', \'601066SS\', \'601088SS\', \'601111SS\', \'601138SS\', \'601166SS\',\
                                \'601186SS\', \'601211SS\', \'601229SS\', \'601288SS\', \'601318SS\', \'601319SS\',\
                                \'601328SS\', \'601336SS\', \'601390SS\', \'601398SS\', \'601601SS\', \'601628SS\',\
                                \'601668SS\', \'601688SS\', \'601766SS\', \'601800SS\', \'601818SS\', \'601857SS\',\
                                \'601888SS\', \'601939SS\', \'601988SS\', \'601989SS\', \'603259SS\', \'603993SS\') "
                                "and t.l_date = {1}".format(self._new_date,self._old_date))

            self.cursor.execute("insert into TCURRENCYRATE select {0}, vc_currency_source, vc_currency_target, "
                                "en_bid_price, en_ask_price, en_mid_price, l_unit_amount, l_priority_level, vc_origin, "
                                "en_direct_price, l_set_no, c_updated from TCURRENCYRATE a where a.l_date={1}".
                                format(self._new_date,self._old_date))
            self.cursor.commit()
        except Exception as ee:
            print(traceback.format_exc())
        print("sub process {0}({1}) exit at {2}".format(self.task_name,self.process_id,
                                                       datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S.%f")))

if __name__=="__main__":
    task=cmf_script(user="trade",pwd="trade",orcl_info="47.111.134.208:1521/yewu",fund_id='5',old_date=20090109,
                           new_date=20190816)
    if task.init()== True:
        task.start()
        task.join()
        task.de_init()
    else:
        print("task init error")