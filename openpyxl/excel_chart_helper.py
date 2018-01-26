# -*- coding=utf-8 -*-
import openpyxl
from openpyxl.styles import Font,Fill
from openpyxl.chart import(LineChart,AreaChart,Reference,series)

class chart_builder(object):
    def __init__(self):
        self._file_name="Chart_Demo.xlsx"
        self._rows = [
            ['Number', 'Batch 1', 'Batch 2'],
            [0, 0, 0],
            [1, 10, 20],
            [2, 40, 30],
            [3, 40, 25],
            [4, 50, 30],
            [5, 30, 10],
            [6, 25, 5],
            [7, 50, 10],
            [8, 5, 20],
            [9, 90, 50],
            [10, 30, 0],
            [11, 40, 60],
            [12, 60, 30],
        ]
        self._wb=openpyxl.Workbook()
        self._wb.remove(self._wb.active)
        self._ws=self._wb.create_sheet("Charts",0)
        for row in self._rows:
            self._ws.append(row)

    #support with ... as statement
    def __enter__(self):
        print("enter __enter__")
        print("exit __enter__")
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        print("enter __exit__")
        self._wb.save(self._file_name)
        self._wb.close()
        print("save chart to file:{0}".format(self._file_name))
        print("exit __exit__")

    def build_AreaChart(self):
        chart = AreaChart()
        chart.title = "Area Chart"
        chart.style = 13
        chart.x_axis.title = 'Test Chart'
        chart.y_axis.title = 'Percentage'
        cats = Reference(self._ws, min_col=1, min_row=2, max_row=len(self._rows))
        data = Reference(self._ws, min_col=2, min_row=1, max_col=3, max_row=len(self._rows))
        chart.add_data(data, titles_from_data=True)
        chart.set_categories(cats)
        self._ws.add_chart(chart, "E1")

    def build_LineChart(self):
        chart=LineChart()
        chart.title="Line Chart"
        chart.x_axis.title="test"
        chart.y_axis.title="Percentage"
        cats=Reference(self._ws,min_col=1,min_row=2,max_row=len(self._rows))
        data=Reference(self._ws,min_col=2,min_row=1,max_col=3,max_row=len(self._rows))
        chart.add_data(data,titles_from_data=True)
        chart.set_categories(cats)
        self._ws.add_chart(chart,"E16")

if __name__=="__main__":
    with chart_builder() as cb:
        cb.build_AreaChart()
        cb.build_LineChart()
