from django.db import models

# Create your models here.
from django.db import models

class one_min_kline(models.Model):
    contract_id=models.CharField(db_column='contract_id',max_length=20,blank=False)
    timestamp=models.BigIntegerField(db_column='timestamp',blank=False)
    high=models.DecimalField(db_column='high_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    open=models.DecimalField(db_column='open_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    low=models.DecimalField(db_column='low_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    close=models.DecimalField(db_column='close_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    volume=models.DecimalField(db_column='volume',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    class Meta:
        abstract=True
        unique_together=('contract_id','timestamp')

class kline(models.Model):
    contract_id=models.CharField(db_column='contract_id',max_length=20,blank=False)
    kline_type=models.IntegerField(db_column='kline_type')
    timestamp=models.BigIntegerField(db_column='timestamp',blank=False)
    high=models.DecimalField(db_column='high_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    open=models.DecimalField(db_column='open_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    low=models.DecimalField(db_column='low_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    close=models.DecimalField(db_column='close_price',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    volume=models.DecimalField(db_column='volume',max_length=20,max_digits=20,decimal_places=8,blank=False,default=-1)
    class Meta:
        abstract=True
        unique_together=('contract_id','timestamp','kline_type')







