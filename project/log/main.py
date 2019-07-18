# -*- coding: utf-8 -*-
# @file   : main.py
# @author : shlian
# @date   : 2019/7/18
# @version: 1.0
# @desc   :
import logging
from log import setup_log

logger=logging.getLogger("main")
if __name__=="__main__":
    setup_log("log_config.yaml")

    logger.debug("Starting....")
    logger.info("Started")
    logger.warning("The system state is warning.")
    logger.error("There are some errors .")
    logger.fatal("Fatal! the system will be shutdown.")

