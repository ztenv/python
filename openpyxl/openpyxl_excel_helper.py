# -*- coding=utf-8 -*-
import openpyxl
from openpyxl.styles import Font,Fill

class excel_helper(object):
    def __init__(self):
        self._file_name="demo.xlsx"

    def list_sheets(self):
        print("___________________list_sheets___________________")
        with openpyxl.load_workbook(self._file_name) as wb:
            for sheet in wb.worksheets:
                print(sheet.title,end=" |   ")
            print()
            print("encoding=",sheet.encoding)

    def read_sheet(self):
        print("___________________read_sheet___________________")
        with openpyxl.load_workbook(self._file_name) as wb:
            first_sheet=wb.worksheets[0]
            for row in first_sheet:
                for cel in row:
                    print(cel.value,end="   |   ")
                print()

    def read_sheet2(self):
        print("___________________read_sheet2___________________")
        with openpyxl.load_workbook(self._file_name) as wb:
            second_sheet=wb.worksheets[1]
            for row_index in range(1,second_sheet.max_row+1):
                for cel in second_sheet[row_index]:
                    print(cel.value,end="   |   ")
                print()

    def read_all_sheets(self):
        print("___________________read_all_sheets___________________")
        with openpyxl.load_workbook(self._file_name) as wb:
            for sheet in wb.worksheets:
                print("___________________sheet_name=",sheet.title,"encoding=",sheet.encoding,"________________________")
                for row in sheet:
                    for cel in row:
                        print(cel.value,end="   |   ")
                    print()

    def write_cfkj(self):
        print("___________________write_workbook___________________")
        wb=openpyxl.Workbook()
        sheet=wb.create_sheet("乘法口诀表",0)
        sheet.append(["","","","","乘法口诀表"])
        for i in range(1,10):
            l=[]
            for j in range(1,i+1):
                l.append(str(j)+"*"+str(i)+"="+str(i*j))
            sheet.append(l)
        wb.save("write_excel_demo.xlsx")
        wb.close()

    def write_cfkj2(self):
        wb=openpyxl.load_workbook("write_excel_demo.xlsx")
        sheet=wb.create_sheet("乘法口诀表２",1)
        sheet.append(["","","","","乘法口诀表"])
        f=openpyxl.styles.Font(color="FF0000")
        sheet["E1"].font=f
        for i in range(1,10):
            for j in range(1,i+1):
                sheet.cell(row=i+1,column=j,value="{0}*{1}={2}".format(j,i,j*i)).font=f
        wb.save("write_excel_demo.xlsx")
        wb.close()

if __name__=="__main__":
    eh=excel_helper()
    #eh.list_sheets()
    #eh.read_sheet()
    #eh.read_sheet2()
    #eh.read_all_sheets()
    eh.write_cfkj()
    eh.write_cfkj2()
