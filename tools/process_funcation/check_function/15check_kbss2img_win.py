# -*- coding=utf-8 -*-
#WIN版账户与影像的接口
import xml.dom.minidom
import xlrd
import xlutils.copy

class message(object):
    def __init__(self,src="",dst=""):
        self.src=src
        self.dst=dst
    def __str__(self):
        return "src="+self.src+"  dst="+self.dst

class check_win_function(object):
    def __init__(self):
        self.excel_map={}
        self.xml_map={}
        self.messages=[]
        self.sheet_index=15
        self._xml="kbss2img.xml"
        self._excel="KBSS_统一账户系统对接系统关系清单.xlsx"
        self.tmp_excel="WIN版影像临时文件.xls"

    def parse_xml(self):
        dom=xml.dom.minidom.parse(self._xml)
        self.messages=dom.getElementsByTagName("message")
        print("message count=",len(self.messages))
        for msg in self.messages:
            #print(msg.getAttribute("src"),msg.getAttribute("dst"))
            m=message(msg.getAttribute("src").strip(),msg.getAttribute("dst").strip())
            if not m.dst in self.xml_map.keys():
                self.xml_map[m.dst]=m
            #if not m.dst in self.excel_map.keys():
            #    print(m)
        print("message unique count=",len(self.xml_map))

    def parese_excel(self):
        workbook=xlrd.open_workbook(self._excel)
        sheet=workbook.sheets()[self.sheet_index]
        for i in range(1,sheet.nrows):
            dst=str(sheet.cell_value(i,1))
            src=str(sheet.cell_value(i,2))
            if dst.find(".")!=-1:
                dst=dst[:dst.find(".")].strip()
            if src.find(".")!=-1:
                src=src[:dst.find(".")].strip()
            #print("dst=",dst,"src=",src)
            msg=message(src,dst)
            if not msg.dst in self.excel_map.keys():
                self.excel_map[msg.dst]=msg
        print("excel lbm count=",len(self.excel_map))
        #for item in self.excel_map.items():
        #    print(item)
    def check(self):
        workbook=xlrd.open_workbook(self._excel)
        wb=xlutils.copy.copy(workbook)
        sheet1=wb.get_sheet(self.sheet_index)
        index=workbook.sheets()[self.sheet_index].nrows+1
        sheet2=workbook.sheets()[self.sheet_index]
        for i in range(1,sheet2.nrows):
            dst=str(sheet2.cell_value(i,1)).strip()
            if dst.find(".")!=-1:
                dst=dst[:dst.find(".")].strip()
            msg=self.xml_map.get(dst,None)
            sheet1.write(i,2,msg.src if msg is not None else "not found")
            print(dst,self.xml_map.get(dst,"not found"))
        print("key in xml not in excel:")
        sheet1.write(index,0,"需增加的接口")
        index+=1
        for key in self.xml_map.keys():
            if not key in self.excel_map.keys():
                print(self.xml_map[key])
                index+=1
                sheet1.write(index,1,self.xml_map[key].dst)
                sheet1.write(index,2,self.xml_map[key].src)

        index+=1
        sheet1.write(index,0,"需增删除的接口")
        print("key in excel not in xml:")
        for key in self.excel_map.keys():
            if not key in self.xml_map.keys():
                print(self.excel_map[key])
                index+=1
                sheet1.write(index,1,self.excel_map[key].dst)
                sheet1.write(index,2,self.excel_map[key].src)
        wb.save(self.tmp_excel)

if __name__=="__main__":
    runner=check_win_function()
    runner.parese_excel()
    runner.parse_xml()
    runner.check()
