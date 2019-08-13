import cx_Oracle
if __name__=="__main__":
    db=cx_Oracle.connect("scott","xc_ogg_2019",'47.110.149.45:1521/orcl')
    print(db.version)
    cursor=db.cursor()
    result=cursor.execute("select * from TEST20190813")
    print(cursor.rowcount)
    for row in result:
        print(row)
    cursor.close()
    db.close()
