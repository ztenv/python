import tushare
 
 
class basic_data(object):
    def __init__(self):
        tushare.set_token("46691c5820ed7e62507866e9e1b481f0c5fc36924fff0a21434798e")
        self._ts=tushare.pro_api("46691c5820ed7e62507866e9e1b481f0c5fc36924fff0a21434798")
 
    def get_trade_cal(self):
        df=self._ts.trade_cal(exchange='', start_date='20200701', end_date='20200801',fields='exchange,cal_date,is_open,pretrade_date', is_open='0')
        return df
 
    def get_kline(self,ts_code,start_data,end_data,adj="qfq",freq="D"):
        df=tushare.pro_bar(ts_code=ts_code, adj=adj, start_date=start_data, end_date=end_data,freq=freq)
        data=list([list(df.columns)])
        for row in df.itertuples():
            data.append(list(row)[1:])
        return data
 
 
if __name__=="__main__":
    bd=basic_data()
    data=bd.get_kline(ts_code="000001.SZ",start_data="20200601",end_data="20200801")
    print(data)