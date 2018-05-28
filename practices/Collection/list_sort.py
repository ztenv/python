# -*- coding: utf-8 -*-
# @File  : test.py
# @Author: shlian
# @Date  : 2018/5/23
# @Desc  :

#li=[["aa","22","44","88"],["dd","11","33","44"],["00","33","55","88"],["dd","00","",""]]
#def sort_by_multi_column(ele):
#    return eval("ele[3]+ele[1]")
##li.sort(key=lambda x:(x[0],x[1]))
#li.sort(key=sort_by_multi_column)
#print(li)

def list_sort_string():
    list=["delphi","Delphi","python","Python","c++","C++","c","C","golang","Golang"]
    list.sort() #按字典顺序升序排列
    print("升序:",list)

    list.sort(reverse=True) #按降序排列
    print("降序:",list)

def list_sort_number():
    list=[30,40,10,50,50.1,80,60,100,90]
    list.sort()
    print("升序:",list)

    list.sort(reverse=True)
    print("降序:",list)

class element(object):
    def __init__(self,id="",name=""):
        self.id=id
        self.name=name
    def __lt__(self, other): # override <操作符
        if self.id<other.id:
            return True
        return False

    def __str__(self): # override __str__
        return "id={0},name={1}".format(self.id,self.name)

def sort_by_attribute():
    list=[element(id="130",name="json"),
          element(id="01",name="jack"),element(id="120",name="tom")]
    list.sort()
    for item in list:
        print(item)

def list_sort_by_length():
    list=["delphi","Delphi","python","Python","c++","C++","c","C","golang","Golang"]
    list.sort(key=lambda ele:len(ele)) #按元素长度顺序升序排列
    print("升序:",list)

    list.sort(key=lambda ele:len(ele),reverse=True) #按降序排列
    print("降序:",list)

def two_d_list_sort():
    list=[ ["1","c++","demo"],
           ["1","c","test"],
           ["2","java",""],
           ["8","golang","google"],
           ["4","python","gil"],
           ["5","swift","apple"]
    ]
    list.sort(key=lambda ele:ele[0])# 根据第1个元素排序
    print(list)
    list.sort(key=lambda ele:ele[1]) #先根据第2个元素排序
    print(list)
    list.sort(key=lambda ele:ele[1]+ele[0]) #先根据第2个元素排序，再根据第1个元素排序
    print(list)

def two_d_list_sort2(sort_index="0,1,2"):#动态的根据传入的元素索引进行排序
    list=[ ["1","c++","demo"],
           ["1","c","test"],
           ["2","java",""],
           ["8","golang","google"],
           ["4","python","gil"],
           ["5","swift","apple"]
           ]
    key_set=""
    for item in sort_index.split(","):
        key_set+="ele["+item+"]+"
    key_set=key_set.rstrip("+")
    list.sort(key=lambda ele:eval(key_set))
    print("排序索引:",sort_index,list)

if __name__=="__main__":
    two_d_list_sort2("0")
    two_d_list_sort2("1")
    two_d_list_sort2("2")
    two_d_list_sort2("1,0")

