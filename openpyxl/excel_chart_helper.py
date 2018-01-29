# -*- coding=utf-8 -*-
import openpyxl
from openpyxl.styles import Font,Fill
from openpyxl.chart import(
    LineChart,AreaChart,BarChart,BubbleChart,
    Reference,Series
)

class chart_builder(object):
    def __init__(self):
        self._file_name="Chart_Demo.xlsx"
        self._rows = [
            ['Number', 'Batch 1', 'Batch 2','Bubble1','Bubble2'],
            [0, 0, 0,0,0],
            [1, 10, 20,20,10],
            [2, 40, 30,30,40],
            [3, 40, 25,25,40],
            [4, 50, 30,30,50],
            [5, 30, 10,10,30],
            [6, 25, 5,5,25],
            [7, 50, 10,10,50],
            [8, 5, 20,20,5],
            [9, 90, 50,50,90],
            [10, 30, 1,1,30],
            [11, 40, 60,60,40],
            [12, 60, 30,30,60],
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
        self._ws.add_chart(chart, "F1")

    def build_LineChart(self):
        chart=LineChart()
        chart.title="Line Chart"
        chart.x_axis.title="test"
        chart.y_axis.title="Percentage"
        cats=Reference(self._ws,min_col=1,min_row=2,max_row=len(self._rows))
        data=Reference(self._ws,min_col=2,min_row=1,max_col=3,max_row=len(self._rows))
        chart.add_data(data,titles_from_data=True)
        chart.set_categories(cats)
        self._ws.add_chart(chart,"F16")

    def build_BarChart(self):
        chart=BarChart()
        chart.title="Bar Chart"
        chart.x_axis.title="test"
        chart.y_axis.title="Percentage"
        cats=Reference(self._ws,min_col=1,min_row=2,max_row=len(self._rows))
        data=Reference(self._ws,min_col=2,min_row=1,max_col=3,max_row=len(self._rows))
        chart.add_data(data,titles_from_data=True)
        chart.set_categories(cats)
        self._ws.add_chart(chart,"O1")

    def build_BubbleChart(self):
        chart=BubbleChart()
        chart.title="Bubble Chart"
        chart.x_axis.title="test"
        chart.y_axis.title="Percentage"
        xvalue=Reference(self._ws,min_col=1,min_row=2,max_row=len(self._rows))
        yvalue=Reference(self._ws,min_col=2,min_row=2,max_row=len(self._rows))
        size=Reference(self._ws,min_col=3,min_row=2,max_row=len(self._rows))
        series=Series(values=yvalue,xvalues=xvalue,zvalues=size,title="2017")

        xvalue2=Reference(self._ws,min_col=1,min_row=2,max_row=len(self._rows))
        yvalue2=Reference(self._ws,min_col=4,min_row=2,max_row=len(self._rows))
        size2=Reference(self._ws,min_col=5,min_row=2,max_row=len(self._rows))
        series2=Series(values=yvalue2,xvalues=xvalue2,zvalues=size2,title="2018")

        xvalue3=Reference(self._ws,min_col=1,min_row=2,max_row=len(self._rows))
        yvalue3=Reference(self._ws,min_col=3,min_row=2,max_row=len(self._rows))
        size3=Reference(self._ws,min_col=3,min_row=2,max_row=len(self._rows))
        series3=Series(values=yvalue3,xvalues=xvalue3,zvalues=size3,title="2019")

        chart.series.append(series)
        chart.series.append(series2)
        #chart.series.append(series3)
        self._ws.add_chart(chart,"O16")

if __name__=="__main__":
    with chart_builder() as cb:
        cb.build_AreaChart()
        cb.build_LineChart()
        cb.build_BarChart()
        cb.build_BubbleChart()
