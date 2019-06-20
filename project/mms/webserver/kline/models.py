from django.db import models

# Create your models here.
from django.db import models

class one_min_kline(models.Model):
    contract_id=models.IntegerField(db_column='contract_id',blank=False,db_index=True)
    timestamp=models.BigIntegerField(db_column='timestamp',blank=False,db_index=True)
    high=models.DecimalField(db_column='high_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    open=models.DecimalField(db_column='open_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    low=models.DecimalField(db_column='low_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    close=models.DecimalField(db_column='close_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    volume=models.DecimalField(db_column='volume',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    class Meta:
        abstract=True
        unique_together=('contract_id','timestamp')
        index_together=('contract_id','timestamp')


class kline(models.Model):
    contract_id=models.IntegerField(db_column='contract_id',blank=False,db_index=True)
    kline_type=models.IntegerField(db_column='kline_type',db_index=True)
    timestamp=models.BigIntegerField(db_column='timestamp',blank=False,db_index=True)
    high=models.DecimalField(db_column='high_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    open=models.DecimalField(db_column='open_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    low=models.DecimalField(db_column='low_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    close=models.DecimalField(db_column='close_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    volume=models.DecimalField(db_column='volume',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    class Meta:
        abstract=True
        unique_together=('contract_id','timestamp','kline_type')
        index_together=('contract_id','timestamp','kline_type')


class contract_info(models.Model):
    contract_id=models.IntegerField(db_column="contract_id",blank=False,db_index=True)
    exchange_id=models.IntegerField(db_column="exchange_id",blank=False,db_index=True)
    symbol_name=models.CharField(db_column="symbol_name",max_length=30,blank=True)
    contract_name=models.CharField(db_column="contract_name",max_length=30,blank=True)
    commodity_id=models.IntegerField(db_column="commodity_id",blank=True)
    currency_id=models.IntegerField(db_column="currency_id",blank=True)
    small_icon_url=models.CharField(db_column="small_icon_url",max_length=255)
    big_icon_url=models.CharField(db_column="big_icon_url",max_length=255)
    active=models.IntegerField(db_column="active",default=1)
    class Meta:
        db_table='contract_info'
        unique_together=('contract_id','exchange_id','contract_name')

class exchange_info(models.Model):
    exchange_id=models.IntegerField(db_column="exchange_id",blank=False,db_index=True)
    exchange_name=models.CharField(db_column="exchange_name",max_length=30,blank=False,db_index=True)
    small_icon_url=models.CharField(db_column="small_icon_url",max_length=255)
    big_icon_url=models.CharField(db_column="big_icon_url",max_length=255)
    remote_url=models.CharField(db_column="remote_url",max_length=255)
    local_url=models.CharField(db_column="local_url",max_length=255)
    active=models.IntegerField(db_column="active",default=1)
    class Meta:
        db_table='exchange_info'
        unique_together=('exchange_id','exchange_name')

