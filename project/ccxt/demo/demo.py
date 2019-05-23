# -*- coding: utf-8 -*-
# @file   : demo.py
# @author : shlian
# @date   : 2019/5/21
# @version: 1.0
# @desc   :
import ccxt
import asyncio
import ccxt.async_support as async_ccxt

if __name__=="__main__":
    print(ccxt.exchanges)
    print(len(ccxt.exchanges))

    print(async_ccxt.exchanges)
    print(len(async_ccxt.exchanges))

    ok_exchange=async_ccxt.okcoincny({'enableRateLimit':True})
    ok_exchange.open()
    print(ok_exchange.loaded_fees.items())
    asyncio.get_event_loop().run_until_complete(ok_exchange.close())
