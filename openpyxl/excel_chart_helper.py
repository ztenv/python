# -*- coding=utf-8 -*-
import openpyxl
from openpyxl.styles import Font,Fill
from openpyxl.chart import(AreaChart,Reference,series)

class chart_builder(object):
    def __init__(self):
        self._wb=openpyxl.Workbook()
        self._ws=self._wb.create_sheet("测试Excel Chart",0)
        self._rows = [
            ['Number', 'Batch 1', 'Batch 2'],
            [2, 40, 30],
            [3, 40, 25],
            [4, 50, 30],
            [5, 30, 10],
            [6, 25, 5],
            [7, 50, 10],
        ]
    def build_chart(self):
        for row in self._rows:
            self._ws.append(row)

        chart = AreaChart()
        chart.title = "Area Chart"
        chart.style = 13
        chart.x_axis.title = 'Test Chart'
        chart.y_axis.title = 'Percentage'
        cats = Reference(self._ws, min_col=1, min_row=1, max_row=7)
        data = Reference(self._ws, min_col=2, min_row=1, max_col=3, max_row=7)
        chart.add_data(data, titles_from_data=True)
        chart.set_categories(cats)
        self._ws.add_chart(chart, "A10")
        self._wb.save("测试excel chart.xlsx")

if __name__=="__main__":
    builder=chart_builder()
    builder.build_chart()