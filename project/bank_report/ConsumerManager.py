# -*- coding=utf-8 -*-

import sys
import os
import xlrd
import Logger

reload(sys)
sys.setdefaultencoding("utf-8")

log=Logger.getLogger(__name__)

class Consumer(object):
    def __init__(self,name="",manager="",business_line="",sub_bank=""):
        self.Name=name
        self.Manager=manager
        self.Business_Line=business_line
        self.Sub_Bank=sub_bank
    def __str__(self):
        return "Name:{0} Manager:{1} BusinessLine:{2} SubBank:{3}".format(self.Name,self.Manager,self.Business_Line,self.Sub_Bank)

class ConsumerManager(object):
    def __init__(self,month):
        self._month=str(month)
        self._Consumer_map={}
        self._fileName=".\\{0}月\\客户名单.xlsx".format(self._month).decode("utf-8")

    def _parser_Subback(self,business_line):
        bl=str(business_line)

        index=bl.find(u'支行',0)
        if index >=0:
            return bl.decode('utf-8')[:index+2].encode('utf-8')
        elif bl.find(u'营业部',0) >=0 :
            return u'营业部'
        elif bl.find(u'公司业务',0)>=0 and bl.find(u'部',0)>=0:
            return bl.decode('utf=8')[:bl.find(u'部',0)+1].encode('utf-8')

        return business_line

    def load(self):
        try:
            if not os.path.exists(self._fileName):
                log.fatal("文件:{0}不存在.".format(self._fileName))
                return -1
            _book=xlrd.open_workbook(self._fileName)
            self._sheet=_book.sheet_by_index(0)
            for row in range(1,self._sheet.nrows):
                consumer=Consumer(self._sheet.cell(row,0).value,self._sheet.cell(row,1).value,self._sheet.cell(row,2).value,
                                  self._parser_Subback(self._sheet.cell(row,2).value))
                self._Consumer_map[consumer.Name]=consumer
                #print str(consumer)

        except Exception as ee:
            log.error("open {0} error{1}".format(self._fileName,ee))
    def get(self,name):
        res=self._Consumer_map.get(name)
        if not res: #把不存在客户名单中的企业名称加入到映射表中
            res=Consumer(name)
            self._Consumer_map[name]=res
            log.warn("{0} 不存在于客户名单中，将新建".format(name))
        return  res

if __name__=="__main__":
    con=ConsumerManager(2)
    con.load()
    print '------------测试使用公司名称获取信息----------------------'
    print con.get('比亚迪汽车工业有限公司'.decode("utf-8"))

