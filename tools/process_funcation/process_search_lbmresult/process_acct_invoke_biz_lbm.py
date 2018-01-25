# -*- coding=utf-8 -*-
import xlrd
import openpyxl
from openpyxl.styles import Font,Fill

#lbm_list分析结果项
class data(object):
    def __init__(self,mid_lbm="",acct_lbm=""):
        self.mid_lbm=mid_lbm.strip()
        self.acct_lbm=acct_lbm.strip()
    def __str__(self):
        return "mid="+self.mid_lbm+",acct="+self.acct_lbm
#结果项
class result_item(object):
    def __init__(self,biz="",mid="",acct=""):
        self.biz_lbm=biz.strip()
        self.mid_lbm=mid.strip()
        self.acct_lbm=acct.strip()
    def key(self):
        return self.biz_lbm+self.mid_lbm+self.acct_lbm

    def __str__(self):
        return "biz="+self.biz_lbm+",mid="+self.mid_lbm+",acct="+self.acct_lbm

#excel记录
class record_item(result_item):
    def __init__(self,sys="",biz="",mid="",acct="",demo=""):
        self.sys=sys.strip()
        self.biz_lbm=biz.strip()
        self.mid_lbm=mid.strip()
        self.acct_lbm=acct.strip()
        self.demo=demo.strip()
    def key(self):
        return "biz="+self.biz_lbm+",mid="+self.mid_lbm+",acct="+self.acct_lbm

    def convert_to_list(self):
        return [self.sys,self.biz_lbm,self.mid_lbm,self.acct_lbm,self.demo]

    def is_new(self):
        return True if len(self.demo)==0 else False

    def __str__(self):
        return "sys="+self.sys+",biz="+self.biz_lbm+",mid="+self.mid_lbm+",acct="+self.acct_lbm+",demo="+self.demo

class process_invoker(object):
    def __init__(self,sheet_index=1):
        self._txt_name="4last_mid_lbm.txt"
        self._excel_name="..\\check_function\\KBSS_统一账户系统对接系统关系清单.xlsx"
        self._sheet_index=sheet_index
        self._sheet_name=""
        self._invoke_mid_list=[]
        self._mid_result=[]
        self._excel_items=[]

    def _load_txt(self):
        f=open(self._txt_name,encoding="utf-8")
        for line in f:
            mid=line[line.find(":")+1:].strip()
            acct=line[line.rfind("\\")+1:line.find(".")]
            d=data(mid,acct)
            self._invoke_mid_list.append(d)
        f.close()
        #for item in self._lbm_list:
        #    print(item)
        print("item count=",len(self._invoke_mid_list))

    #加载excel的行到self._excel_items，item的类型为：record_item
    def _load_excel(self):
        print("___________________load_excel_________________________")
        wb=xlrd.open_workbook(self._excel_name)
        sheet1=wb.sheets()[self._sheet_index]
        self._sheet_name=sheet1.name
        for i in range(1,sheet1.nrows):
            sys=str(sheet1.cell_value(i,0))
            biz=str(sheet1.cell_value(i,1))
            mid=str(sheet1.cell_value(i,2))
            acct=str(sheet1.cell_value(i,3))
            demo=str(sheet1.cell_value(i,4))
            biz=biz[:biz.find(".")]if biz.find(".")!=-1 else biz
            mid=mid[:mid.find(".")]if mid.find(".")!=-1 else mid
            acct=acct[:acct.find(".")]if acct.find(".")!=-1 else acct
            rec=record_item(sys,biz,mid,acct,demo)
            self._excel_items.append(rec)
            #print(rec)
        print("excel_count=",len(self._excel_items))

    def _find_item_by_mid(self,mid):
        result=[]
        for item in self._invoke_mid_list:
            if item.mid_lbm==mid:
                result.append(item)
        return result

    #1、遍历excel sheet页的所有项，根据mid的LBM号，找到所有acct调用mid的地方
    #2、对于单个mid，过滤重复的acct lbm
    #3、将最终的结果存储到self._mid_result集合中，集合中的项为result_item类型
    def _link_mid_to_lbm(self):
        find_unique={}
        print("___________________link_mid_to_lbm_________________________")
        for ei in self._excel_items:
            mid=ei.mid_lbm
            biz=ei.biz_lbm
            if mid not in find_unique.keys():
                print(biz,"  ",mid)
                mid_to_acct_items=self._find_item_by_mid(mid)
                find_unique[mid]=mid
                lbm_unique={}
                for item in mid_to_acct_items:
                    if item.acct_lbm not in lbm_unique.keys():
                        #print("          ",item)
                        lbm_unique[item.acct_lbm]=item
                        ri=result_item(biz,mid,item.acct_lbm)
                        self._mid_result.append(ri)
                        print("          ",ri)
        print("mid_result_count=",len(self._mid_result))

    #合并self._excel_items与self._mid_result的结果，涉及双向合并的问题
    def _build_result(self):
        self._result=[]
        print("___________________build_result_________________________")
        unique_map={}
        for mi in self._mid_result:     #合并_mid_result和_excel_items: mi not in _excel_items:则添加mi;mi in _excel_items:添加ei
            is_find=False
            for ei in self._excel_items:
                if ei.biz_lbm==mi.biz_lbm and ei.mid_lbm==mi.mid_lbm and ei.acct_lbm==mi.acct_lbm:
                    #print("found:",ei)
                    is_find=True
                    if ei.key() not in unique_map.keys():
                        self._result.append(ei)
                        unique_map[ei.key()]=""
            if not is_find:
                if mi.key() not in unique_map.keys():
                    self._result.append(record_item(mid=mi.mid_lbm,biz=mi.biz_lbm,acct=mi.acct_lbm))
                    unique_map[mi.key()]=""
        print("result count=",len(self._result))
        f=open("1-"+str(self._sheet_index)+self._sheet_name+"mid-excel.txt",mode="w",encoding="utf-8")
        for item in self._result:
            print(item)
            f.write(str(item))
            f.write("\n")
        f.close()
        #_____________________________________________________________________________________________
        #self._result.append(record_item("___________以下是存在excel不存在txt文件中，需要手工排查并删除","____","_____","____","_____"))
        #for ei in self._excel_items:
        #    is_find=False
        #    for mi in self._mid_result:
        #        if ei.biz_lbm==mi.biz_lbm and ei.mid_lbm==mi.mid_lbm and ei.acct_lbm==mi.acct_lbm:
        #            is_find=True
        #    if not is_find and ei.key() not in unique_map.keys():
        #        self._result.append(ei)
        #        unique_map[ei.key()]=""
        #print("result count=",len(self._result))
        #f=open("2-"+str(self._sheet_index)+self._sheet_name+"excel-mid.txt",mode="w",encoding="utf-8")
        #for item in self._result:
        #    print(item)
        #    f.write(str(item))
        #    f.write("\n")
        #f.close()
    def write_to_excel(self):
        wb=openpyxl.Workbook()
        sheet=wb.create_sheet(self._sheet_name,0)
        wb.remove(wb.worksheets[1])
        sheet.append(["所属系统","接口LBM","中转LBM","账户LBM","描述"])
        f=Font(color="FF0000")
        row_index=1
        for item in self._result:
            sheet.append(item.convert_to_list())
            row_index+=1
            if item.is_new():
                sheet["A"+str(row_index)].font=f
                sheet["B"+str(row_index)].font=f
                sheet["C"+str(row_index)].font=f
                sheet["D"+str(row_index)].font=f
                sheet["E"+str(row_index)].font=f
        wb.save(str(self._sheet_index)+self._sheet_name+".xlsx")
        wb.close()

    def run(self):
        self._load_txt()
        self._load_excel()
        self._link_mid_to_lbm()
        self._build_result()
        self.write_to_excel()

if __name__=="__main__":
    l=[1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    for index in l:
        p=process_invoker(index)
        p.run()
