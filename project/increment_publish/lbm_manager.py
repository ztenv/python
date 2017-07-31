# -*- coding=utf-8 -*-
import sys

reload(sys)
sys.setdefaultencoding("utf-8")

# lbm 模块管理类
class lbm_manager(object):
    def __init__(self):
        self.lbm_list=[]
        pass

    def add(self,lbm):
        self.lbm_list.append(lbm)

    def remove(self,lbm):
        self.lbm_list.remove(lbm)

    def clear(self):
        self.lbm_list=[]

