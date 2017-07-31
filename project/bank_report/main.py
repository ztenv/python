# -*- coding=utf-8 -*-

import sys
import Logger
import EnterpriseInfo

reload(sys)
sys.setdefaultencoding("utf-8")

log = Logger.getLogger(__name__)

if __name__ == '__main__':
    log.info("Starting report...")
    log.info("Started report")
    try:
        ei=EnterpriseInfo.EnterpriseManager(sys.argv[1])
        ei.load()
        ei.save()
    except Exception as ee:
        log.exception(ee)
    log.info("Stoppint report...")
    log.info("Stopped report...")
