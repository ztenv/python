# -*- coding=utf-8 -*-
import openpyxl
import itertools
import time
import os
import multiprocessing

class business(object):
    def __init__(self):
        self._excel_file="Set.xlsx"
        self._data_list=[]
        self._union_set_result=[]
        self._difference_set_result=[]
        self._start_value=1
        self._stop_value=100
        self._all_set=set()
        self._record_size=1
        self._process_number=os.cpu_count()-1
        #self._result_file=open("result.txt",mode="w")

    def load_data(self):
        wb=openpyxl.load_workbook(self._excel_file)
        sheet=wb.worksheets[0]
        column_count=len(list(sheet.columns))
        for index in range(0,column_count):
            self._data_list.append([])

        first=True
        for r in sheet:
            index=0
            if first:
                first=False # read value range
                vlist=str(r[1].value).split("-")
                self._start_value=int(vlist[0])
                self._stop_value=int(vlist[1])
                continue

            for cel in r: # read set items
                s=set(str(cel.value).split(","))
                #for item in str(cel.value).split(","):
                #    s.add(int(item))
                self._data_list[index].append(s)
                index+=1
        wb.close()

        for index in range(self._start_value,self._stop_value+1):
            self._all_set.add(str(index))

        for item in self._data_list:
            self._record_size*=len(item)

    def _cal_set(self,con):
        process_count=0
        start_time=time.time()
        while(True):
            list_data=con.recv()
            if len(list_data)==1 and list_data[0]=="FIN":
                break

            for item in list_data:
                tmp=[]
                for t in item:
                    for s in t:
                        tmp.append(s)
                union_set=set(tmp)
                diff_set=self._all_set.difference(union_set)
                process_count+=1
                #if(process_count%10000000==0):
                print("pid={0},process_count={1},time={2},union_set={3},diff_set={4}"
                          .format(os.getpid(),process_count,(time.time()-start_time),union_set,diff_set))
                    #start_time=time.time()
                #f.write(str(union_set)+"\n")

    def descartes(self):
        self._union_set_result=[]
        print("start...")
        count=0
        p=multiprocessing.Pool(self._process_number)
        queue_length=int(self._record_size*1.0/self._process_number)
        queue_length=queue_length if queue_length<100000 else 100000
        con_set=[]
        for index in range(1,self._process_number+1):
            con1,con2=multiprocessing.Pipe()
            p.apply_async(func=self._cal_set,args=(con1,))
            con_set.append(con2)

        data=[]
        index=0
        for li in itertools.product(*self._data_list):
            data.append(li)
            if len(data)>=queue_length:
                con_set[index%self._process_number].send(data)
                index+=1
                data=[]
            count+=1
            if count%100000000==0:
                print(count,li)

        if len(data)>0:
            con_set[index%self._process_number].send(data)
        for con in con_set:
            con.send(["FIN"])
        p.close()
        p.join()
        print("stop")

    def _cal_difference_set(self):
        print("差集,数据范围[{0},{1}]".format(self._start_value,self._stop_value))
        for item in self._union_set_result:
            diff=self._all_set.difference(item)
            self._difference_set_result.append(diff)
            print(diff)

    def write_result(self):
        f=open("result.txt",mode="w")
        f.write("并集\n")
        for r in self._union_set_result:
            set_value="("
            for item in r:
                set_value+=str(item)
                set_value+=","
            set_value=set_value[:set_value.rfind(",")]
            set_value+=")\n"
            f.write(set_value)
        f.write("\n差集，数据范围[{0},{1}]\n".format(self._start_value,self._stop_value))
        for r in self._difference_set_result:
            set_value="("
            for item in r:
                set_value+=str(item)
                set_value+=","
            set_value=set_value[:set_value.rfind(",")]
            set_value+=")\n"
            f.write(set_value)
        f.close()

if __name__=="__main__":
    start_time=time.time()
    b=business()
    b.load_data()
    b.descartes()
    stop_time=time.time()
    print("use time:{0}".format(stop_time-start_time))
