# -*- coding: utf-8 -*-
# @file   : data_factory.py
# @author : shlian
# @date   : 2019/8/13
# @version: 1.0
# @desc   :
import traceback
import random
import string
import datetime

class column_info(object):
    def __init__(self,name,type):
        self._name=name
        pre_type=type[:type.find(")")+1].strip() if type.find(")")!=-1 else type
        self._type=pre_type[:pre_type.find("(")].strip() if type.find(")")!=-1 else type.split(" ")[0]
        self._length=pre_type[pre_type.find("(")+1:pre_type.find(")")] if type.find(")")!=-1 else "N/A"
        self._pre_value=string.ascii_uppercase+string.ascii_lowercase+string.ascii_letters+string.digits+string.hexdigits+string.octdigits
        self._value=self._build_value()

    def __str__(self):
        return "{0},{1},({2}),{3}".format(self._name,self._type,self._length,self._value)

    def refresh_value(self):
        self._value=self._build_value()

    def _build_value(self):
        if self._type=="NUMBER":
            value=random.random()*100
            if self._length.find(",")==-1:
                return int(value)
            else:
                return round(value,int(self._length[self._length.find(",")+1:]))
        elif self._type=="VARCHAR2" or self._type=="CHAR":
            return ''.join(random.sample(self._pre_value,int(self._length) if int(self._length)<144 else 144))
        elif self._type=="DATE":
            #return datetime.datetime.now().date()
            return "to_date('{0}','YYYY-MM-DD HH24:MI:SS')".format(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
        elif self._type=="TIMESTAMP":
            #return datetime.datetime.now().strftime("yyyy-mm-dd hh:MM:ss")
            return "to_timestamp(to_char(systimestamp,'YYYY-MM-DD HH24:MI:SS.FF'),'YYYY-MM-DD HH24:MI:SS.FF')"

    @property
    def name(self):
        return self._name

    @property
    def type(self):
        return self._type

    @property
    def value(self):
        return self._value

class data_factory(object):
    def __init__(self):
        self._file_name="table_schema.txt"
        self._table_name="test20190813"
        self._data=""
        self._record=[]

    def init(self,file_name="table_schema.txt",table_name="TEST20190813"):
        self._file_name=file_name
        self._table_name=table_name
        try:
            with open(self._file_name) as f:
                for line in f.readlines():
                    self._data+=line
        except Exception as ee:
            print(str(ee))
            traceback.format_exc()

    def process(self):
        self._data=self._data[self._data.find("(")+1:self._data.rfind(")")]
        fields=self._data.split("\n")

        for item in fields:
            item_list=item.strip().split("  ")
            if len(item_list)<=1:
                continue
            ci=column_info(item_list[0],item_list[len(item_list)-1])
            self._record.append(ci)

    def build_insert_statement(self):
        column_str="("
        value_str="("
        for item in self._record:
            item.refresh_value()
            column_str+=item.name+","
            value_str+=str(item.value)+"," if item.type.find("CHAR")==-1 else '\'{0}\','.format(item.value)
        column_str=column_str[:len(column_str)-1]+")"
        value_str=value_str[:len(value_str)-1]+")"
        return "INSERT INTO {0} {1} VALUES {2}".format(self._table_name,column_str,value_str)


if __name__=="__main__":
    print("starting...")
    df=data_factory()
    df.init()
    df.process()
    for index in range(0,100):
        print(index,df.build_insert_statement())
    print("stopped")
