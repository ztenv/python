# -*- coding=utf-8 -*-

import sys
import os
import Logger
import xlrd
import xlwt
import ConsumerManager

reload(sys)
sys.setdefaultencoding("utf-8")
log=Logger.getLogger(__name__)

class EnterpriseInfo(object):
    def __init__(self,consumer):
        self.Consumer=consumer     #客户相关信息
        self.Settlement=0.0        #结算量
        self.Sum_Settlement=0.0    #累计结算量
        self.Profit=0.0            #收益
        self.Sum_Profit=0.0        #累计收益
        self.Is_valid=0            #有效户

    def __str__(self):
       return "Consumer:{5},Settlement:{0},SumSettlement:{1},Profit:{2},SumProfit:{3},IsValid:{4}" \
           .format(self.Settlement,self.Sum_Settlement,self.Profit,self.Sum_Profit,self.Is_valid,self.Consumer)

class EnterpriseManager(object):
    def __init__(self,month):
        self._month=str(month)

        self._Settlement_file=".\\{0}月结算量.xlsx".format(self._month).decode("utf-8")
        self._Sum_Settlement_file=".\\1-{0}月结算量.xlsx".format(self._month).decode("utf-8")
        self._Profit_file=".\\1-{0}月收益.xlsx".format(int(self._month)-1).decode("utf-8")
        self._Sum_Profit_file=".\\1-{0}月收益.xlsx".format(self._month).decode("utf-8")
        self._Financial_market_file=".\\{0}月金融市场.xlsx".format(self._month).decode("utf-8")

        self._Master_Table_file=".\\{0}月总表.xls".format(self._month).decode("utf-8")
        self._ConsumerManager=ConsumerManager.ConsumerManager(month)
        self._Enterprise_map={}

    def _check_file(self):
        if not os.path.exists(self._Settlement_file):
            log.fatal("文件:{0} 不存在，请核对.".format(self.Settlement_file))
            return -1
        if not os.path.exists(self._Sum_Settlement_file):
            log.fatal("文件:{0} 不存在，请核对.".format(self._Sum_Settlement_file))
            return -1
        if not os.path.exists(self._Profit_file):
            log.fatal("文件:{0} 不存在，请核对".format(self._Profit_file))
            return -1
        if not os.path.exists(self._Sum_Profit_file):
            log.fatal("文件:{0} 不存在，请核对".format(self._Sum_Profit_file))
            return -1
        return 0

    def load(self):
        if self._check_file()<0:
            return -1
        try:
            self._ConsumerManager.load()
        except Exception as ee:
            log.exception(ee)
        self._load_Settlement()
        self._load_Sum_Settlement()

        self._load_Sum_Profit()
        self._load_Profit()

        self._load_financial_market()

    def _write_header(self,sheet):
        #总表的表头：行标签	 业务团队	团队	客户经理	2017年2月结算量 	2月累计结算量	2017年2月收益	2月累计收益	 有效户
        header=[u"行标签",u"业务团队",u"团队",u"客户经理","{0}月结算量".format(self._month).decode("utf-8"),"{0}月累计结算量".format(self._month).decode("utf-8"),
                "{0}月收益".format(self._month).decode("utf-8"),"{0}月累计收益".format(self._month).decode("utf-8"),u"有效户"]
        for i in range(0,len(header)):
            sheet.write(0,i,header[i])

    def save(self):
        print "***********************************总表********************"
        for item in self._Enterprise_map.values():
            print item
        if os.path.exists(self._Master_Table_file):
            log.fatal("文件:{0} 已存在，请改名或移动到其他目录.".format(self._Master_Table_file))
            return -1

        f=xlwt.Workbook()
        try:
            sheet=f.add_sheet(u"总表")
            self._write_header(sheet)
            i=1
            for item in self._Enterprise_map.values():
                sheet.write(i,0,item.Consumer.Name.decode("utf-8"))
                sheet.write(i,1,item.Consumer.Sub_Bank.decode("utf-8"))
                sheet.write(i,2,item.Consumer.Business_Line.decode("utf-8"))
                sheet.write(i,3,item.Consumer.Manager.decode("utf-8"))
                sheet.write(i,4,item.Settlement)
                sheet.write(i,5,item.Sum_Settlement)
                sheet.write(i,6,item.Profit)
                sheet.write(i,7,item.Sum_Profit)
                sheet.write(i,8,item.Is_valid)
                i+=1
                #log.info(item)
        except Exception as ee:
            log.exception(ee)
        finally:
            f.save(self._Master_Table_file)

    #加载某月的结算量
    def _load_Settlement(self):
        log.info("Starting parse {0} Settlement....".format(self._month))
        try:
            book=xlrd.open_workbook(self._Settlement_file)
            sheet=book.sheet_by_index(0)
            name=""
            value=0.0
            for row in range(3,sheet.nrows):
                try:
                    name=sheet.cell(row,1).value
                    value=sheet.cell(row,2).value
                    ei=EnterpriseInfo(self._ConsumerManager.get(name))
                    ei.Settlement=value
                    if ei.Consumer:
                        self._Enterprise_map[name]=ei #有些name不存在于客户关系表中
                    else:
                        print "{0}中的客户名称:{1} 不存在于客户名单".format(self._Settlement_file,name)
                except Exception as ee:
                    log.exception(ee)
        except Exception as ee:
            log.exception(ee)
        log.info("Stopped parse {0} Settlement".format(self._month))

    #加载1到某月的累计结算量
    def _load_Sum_Settlement(self):
        log.info("Starting parse 1-{0} Sum Settlement...".format(self._month))
        try:
            book=xlrd.open_workbook(self._Sum_Settlement_file)
            sheet=book.sheet_by_index(0)
            name=""
            value=0.0
            for row in range(3,sheet.nrows):
                try:
                    name=sheet.cell(row,1).value
                    value=sheet.cell(row,2).value
                    ei=self._Enterprise_map.get(str(name).decode("utf-8"))
                    if ei:
                        ei.Sum_Settlement=value
                    else:
                        ei=EnterpriseInfo(self._ConsumerManager.get(name))
                        ei.Sum_Settlement=value
                        self._Enterprise_map[str(name).decode("utf-8")]=ei
                        log.warn("客户名称:{0} 不存在于企业信息中....".format(name))
                except Exception as ee:
                    log.exception(ee)
        except Exception as ee:
            log.exception(ee)
        log.info("Stopped parse 1-{0} Settlement".format(self._month))

    #分析某月的收益:1到某月的收益－1到某月减1的收益
    def _load_Profit(self):
        log.info("Starting parse 1-{0} Profit".format(int(self._month)-1))
        class profit(object):
            def __init__(self,name,profit):
                self.Name=name
                self.profit=profit
            def __str__(self):
                return "name:{0},profit:{1}".format(self.Name,self.profit)
        _profit_list={}
        try:
            book=xlrd.open_workbook(self._Profit_file)
            sheet=book.sheet_by_index(0)
            name=""
            for row in range(1,sheet.nrows):
                try:
                    name=sheet.cell(row,0).value
                    value=0.0
                    for i in range(1,11):
                        value+=float(sheet.cell(row,i).value)
                    prof=_profit_list.get(name.decode("utf-8"))
                    if prof:
                        prof.profit+=value
                    else:
                        _profit_list[name]=profit(name,value)
                except Exception as ee:
                    log.exception(ee)
        except Exception as ee:
            log.exception(ee)

        #for item in _profit_list: #这里有问题，不能这么循环，当N-1月没有收益的时候，则根本不会计算N－（N－1）月的操作
        #    #print item
        #    ei=self._Enterprise_map.get(str(item.Name).decode("utf-8"))
        #    if ei:
        #        ei.Profit=ei.Sum_Profit-item.profit
        #    else:
        #        log.error("{0} 不存在于累计收益中".format(item))
        for item in self._Enterprise_map.values():
            pro=_profit_list.get(item.Consumer.Name.decode("utf-8"))
            item.Profit=item.Sum_Profit-(pro.profit if pro else 0)
            print item

        log.info("Stopped parse 1-{0} Profit".format(int(self._month)-1))
        print "2item value=",len(self._Enterprise_map.values())

    #分析1到某月的收益:重复的加和
    def _load_Sum_Profit(self):
        log.info("Starting parse 1-{0} Sum Profit".format(self._month))
        try:
            book=xlrd.open_workbook(self._Sum_Profit_file)
            sheet=book.sheet_by_index(0)
            name=""
            for row in range(4,sheet.nrows):
                try:
                    name=sheet.cell(row,4).value
                    value=0.0
                    for i in range(5,15):
                        value+=float(sheet.cell(row,i).value)
                    ei=self._Enterprise_map.get(str(name).decode("utf-8"))
                    if ei:
                        ei.Sum_Profit+=value
                    else:
                        ei=EnterpriseInfo(self._ConsumerManager.get(str(name).decode("utf-8")))
                        ei.Sum_Profit+=value
                        self._Enterprise_map[str(name).decode("utf-8")]=ei

                        log.warn("客户名称:{0} 不存在企业信息中".format(name))
                except Exception as ee:
                    log.exception(ee)

        except Exception as ee:
            log.exception(ee)
        log.info("Stopped parse 1-{0} Sum Profit".format(self._month))

    def _load_financial_market(self):
        log.info("Starting parse 1-{0} financial market".format(self._month))
        try:
            book=xlrd.open_workbook(self._Financial_market_file)
            sheet=book.sheet_by_index(0)
            date=""
            name=""
            value=""
            for row in range(1,sheet.nrows):
                try:
                    month=xlrd.xldate.xldate_as_datetime(sheet.cell(row,2).value,0).month
                    name=sheet.cell(row,4).value
                    value=sheet.cell(row,8).value
                    ei=self._Enterprise_map.get(str(name).decode("utf-8"))
                    if not ei:
                        ei=EnterpriseInfo(self._ConsumerManager.get(str(name).decode("utf-8")))
                        self._Enterprise_map[name]=ei
                        log.warn("客户名称:{0} 不存在企业信息中".format(name))


                    if month<=int(self._month):
                        ei.Sum_Profit+=value
                        if month==int(self._month):
                            ei.Profit+=value
                    else:
                        log.error("非法的信息:month={0},name={1},value={2}".format(month,name,value))

                except Exception as ee:
                    log.exception(ee)
        except Exception as ee:
            log.exception(ee)
        log.info("Stopped parse 1-{0} financial market".format(self._month))


if __name__=="__main__":
    print "test ",__name__
    em=EnterpriseManager(2)
    em.load()
    em.save()
