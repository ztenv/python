# -*- coding=utf-8 -*-
import openpyxl
import itertools
import time

class business(object):
    def __init__(self):
        self._excel_file="Set.xlsx"
        self._data_list=[]
        self._union_set_result=[]
        self._difference_set_result=[]
        self._start_value=1
        self._stop_value=100

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
                print(s)
                self._data_list[index].append(cel.value)
                index+=1
        wb.close()

    def cal_union_set(self):
        self._union_set_result=[]
        print("并集")
        for list in itertools.product(*self._data_list):
            s=set()
            for value in list:
                for item in str(value).split(","):
                    s.add(item)
            self._union_set_result.append(s)

    def cal_difference_set(self):
        print("差集,数据范围[{0},{1}]".format(self._start_value,self._stop_value))
        s=set()
        for index in range(self._start_value,self._stop_value+1):
            s.add(str(index))
        for item in self._union_set_result:
            diff=s.difference(item)
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
    b.cal_union_set()
    b.cal_difference_set()
    b.write_result()
    stop_time=time.time()
    print("use time:{0}".format(stop_time-start_time))
