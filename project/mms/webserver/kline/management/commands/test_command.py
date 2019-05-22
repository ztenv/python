# -*- coding: utf-8 -*-
# @file   : test_command.py
# @author : shlian
# @date   : 2019/5/22
# @version: 1.0
# @desc   :
import datetime
import time
from django.core.management.base import BaseCommand,CommandError

class Command(BaseCommand):
    def handle(self,*args,**options):
        while(True):
            self.stdout.write("test....{0}".format(datetime.datetime.now().timestamp()))
            time.sleep(1)
