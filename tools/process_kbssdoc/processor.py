# -*- coding=utf-8 -*-
import os
import xlrd
import json

class parameter(object):
    def __init__(self,name="",code="",type="",necessary="",description=""):
        self.Name=name
        self.Code=code
        self.Type=type
        self.IsNecessary=necessary
        self.Description=description
    def __str__(self):
        return "        {0},{1},{2},{3},{4}".format(self.Name,self.Code,self.Type,self.IsNecessary,self.Description)

class para_file(object):
    def __init__(self,funcation_code=""):
        self.request_para_list=[]
        self.return_para_list=[]
        self.function_code=funcation_code
    def add_request_para(self,para):
        self.request_para_list.append(self._build_request_map(para))

    def add_return_para(self,para):
        self.return_para_list.append(self._build_return_map(para))

    def _build_request_map(self,para):
        data={"identifier":para.Code,  # 参数代码
              "name": para.Name,  # 参数名称
              "dicCode": "",  # 全写空
              "required": "Y" if para.IsNecessary.find("是")!=-1 else "N",  # 是否必填
              "remark":para.Description ,  # 备注
              "parameterList": [],  # 空
              "validator": "",  # 空
              "dataType": para.Type  # 数据类型
              }
        return data

    def _build_return_map(self,para):
        data={
            "identifier": para.Code,  # 参数代码
            "name": para.Name,  # 参数名称
            "dataType": para.Type,  # 数据类型
            "dicCode": "",  # 填空
            "required": "",  # 空
            "remark": para.Description,  # 备注
            "parameterList": [],  #
            "validator": ""  #
        }
        return data

    def dump_to_file(self):
        f=open(os.path.join(".\\request\\",self.function_code+".txt"),"w")
        f.write(json.dumps(self.request_para_list,ensure_ascii=False,indent=4))
        f.close()

        f=open(os.path.join(".\\return\\",self.function_code+".txt"),"w")
        f.write(json.dumps(self.return_para_list,ensure_ascii=False,indent=4))
        f.close()

class runner(object):
    def __init__(self):
        self._excel_name="kbssDoc.xls"
        self._isRequest=False
        self._isReturn=False

    def run(self):
        self.workbook=xlrd.open_workbook(self._excel_name)
        work_sheet=self.workbook.sheet_by_index(2)
        self.fun_code=""
        pf=para_file()
        count=0       #有多少个功能代码
        lbm_count={}  #过滤重复的lbm,并统计数量
        for i in range(0,work_sheet.nrows):
            value=str(work_sheet.cell_value(i,0))
            if value.find("功能代码")!=-1:
                self.fun_code=work_sheet.cell_value(i,1)
                if self.fun_code in lbm_count:
                    print(" Duplicated function:",self.fun_code)
                else:
                    lbm_count[self.fun_code]=""
                pf=para_file(self.fun_code)
                count+=1
            elif value.find("请求数据")!=-1:
                self._isRequest=True
                #print(work_sheet.cell_value(i,0))
                continue
            elif value.find("返回数据")!=-1:
                self._isRequest=False
                self._isReturn=True
                #print(work_sheet.cell_value(i,0))
                continue
            elif value.find("备注信息")!=-1:
                self._isReturn=False
                pf.dump_to_file()

            if self._isRequest:
                pa=parameter(work_sheet.cell_value(i,1),work_sheet.cell_value(i,2),work_sheet.cell_value(i,3),work_sheet.cell_value(i,4),work_sheet.cell_value(i,5))
                pf.add_request_para(pa)
                #print(self._build_request_map(pa),end='')

            if self._isReturn:
                pa=parameter(work_sheet.cell_value(i,1),work_sheet.cell_value(i,2),work_sheet.cell_value(i,3),work_sheet.cell_value(i,4),work_sheet.cell_value(i,5))
                pf.add_return_para(pa)
                #print(self._build_return_map(pa),end='')
        pf.dump_to_file()
        print("LBM record count=",count)
        print("Unique LBM count=",len(lbm_count))

if __name__=="__main__":
    r=runner()
    r.run()
