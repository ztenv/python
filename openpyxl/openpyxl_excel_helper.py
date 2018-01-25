# -*- coding=utf-8 -*-
import openpyxl
from openpyxl.styles import Font,Fill
from openpyxl.chart import(AreaChart,Reference,series)

class excel_helper(object):
    def __init__(self):
        self._file_name="demo.xlsx"

    def list_sheets(self):
        print("___________________list_sheets___________________")
        wb=openpyxl.load_workbook(self._file_name)
        for sheet in wb.worksheets:
            print(sheet.title,end=" |   ")
        print()
        print("encoding=",sheet.encoding)
        wb.close()

    def read_sheet(self):
        print("___________________read_sheet___________________")
        wb=openpyxl.load_workbook(self._file_name)
        first_sheet=wb.worksheets[0]
        for row in first_sheet:
            for cel in row:
                print(cel.value,end="   |   ")
            print()
        wb.close()

    def read_sheet2(self):
        print("___________________read_sheet2___________________")
        wb=openpyxl.load_workbook(self._file_name)
        second_sheet=wb.worksheets[1]
        for row_index in range(1,second_sheet.max_row+1):
            for cel in second_sheet[row_index]:
                print(cel.value,end="   |   ")
            print()
        wb.close()

    def read_all_sheets(self):
        print("___________________read_all_sheets___________________")
        wb=openpyxl.load_workbook(self._file_name)
        for sheet in wb.worksheets:
            print("___________________sheet_name=",sheet.title,"encoding=",sheet.encoding,"________________________")
            for row in sheet:
                for cel in row:
                    print(cel.value,end="   |   ")
                print()
        wb.close()

    def statistics_lbm(self):
        print("___________________statistics_lbm___________________")
        wb=openpyxl.load_workbook(self._file_name)
        biz_map={}
        mid_map={}
        acct_map={}
        is_first=True
        for row in wb.worksheets[1].rows:
            if is_first:
                is_first=False
                continue
            biz_lbm=row[1].value
            biz_lbm=biz_lbm if biz_lbm!="None"else ""
            biz_map[biz_lbm]=biz_map.get(biz_lbm,0)+1
            mid_lbm=row[2].value
            mid_lbm=mid_lbm if mid_lbm!="None" else ""
            mid_map[mid_lbm]=mid_map.get(mid_lbm,0)+1
            acct_lbm=row[3].value
            acct_lbm=acct_lbm if acct_lbm!="None" else ""
            acct_map[acct_lbm]=acct_map.get(acct_lbm,0)+1
        wb.close()
        print(len(biz_map),biz_map)
        print(len(mid_map),mid_map)
        print(len(acct_map),acct_map)

        _chart_file_name="lbm_called_chart.xlsx"
        wb=openpyxl.Workbook()
        wb.remove(wb.active)
        self._build_chart(wb,biz_map,sheet_title="biz_lbm",chart_title="biz lbm")
        self._build_chart(wb,mid_map,sheet_title="mid_lbm",chart_title="mid lbm")
        self._build_chart(wb,acct_map,sheet_title="acct_lbm",chart_title="acct lbm")
        print("save lbm call chart to {0}".format(_chart_file_name))
        wb.save(_chart_file_name)
        wb.close()

    def _build_chart(self,wb=openpyxl.Workbook(),data_map={},sheet_title="",chart_title=""):
        sheet=wb.create_sheet(sheet_title)
        sheet.append(["x","y"])
        for item in data_map.items():
            sheet.append((item[0],item[1]))
        chart_data=Reference(sheet,min_col=2,min_row=2,max_row=len(data_map)+1)
        cats=Reference(sheet,min_col=1,min_row=2,max_row=len(data_map)+1)
        chart=AreaChart()
        chart.title=chart_title
        chart.x_axis.title="lbm"
        chart.y_axis.title="called count"
        chart.add_data(chart_data)
        chart.set_categories(cats)
        sheet.add_chart(chart,anchor="D4")

    def write_cfkj(self):
        print("___________________write_cfkj___________________")
        wb=openpyxl.Workbook()
        sheet=wb.create_sheet("乘法口诀表",0)
        sheet.append(["","","","","乘法口诀表"])
        #sheet.merge_cells(start_row=1,start_column=4,end_row=1,end_column=5)
        sheet.merge_cells(range_string="E1:F1")
        for i in range(1,10):
            l=[]
            for j in range(1,i+1):
                l.append(str(j)+"*"+str(i)+"="+str(i*j))
            sheet.append(l)
        wb.save("write_excel_demo.xlsx")
        wb.close()

    def write_cfkj2(self):
        print("___________________write_cfkj2___________________")
        wb=openpyxl.load_workbook("write_excel_demo.xlsx")
        sheet=wb.create_sheet("乘法口诀表２",1)
        sheet.append(["","","","","乘法口诀表"])
        sheet.merge_cells('E1:F1')
        f=openpyxl.styles.Font(color="FF0000",bold=True)
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

    eh.statistics_lbm()
    #eh.write_cfkj()
    #eh.write_cfkj2()
