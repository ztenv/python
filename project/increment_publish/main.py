# -*- coding=utf-8 -*-
import os
import sys
import time
from publisher import publisher

reload(sys)
sys.setdefaultencoding("utf-8")

#def test_run():
#    _context=context()
#    _context.compare_svn_version()
#    _context.scan_all_files()
#    _context.scan_lbm_files()
#    _lbm_manager=lbm_manager()
#
#    for item in _context.lbm_files:
#        print "lbm_file:",item
#        lbmx=lbm(_context,item)
#        lbmx.parse_dependency()
#        _lbm_manager.add(lbmx)
#        print "**************************LBM:",lbmx.id," dependency ",len(lbmx.dep_files)," files***************************"
#        for k,v in lbmx.dep_files.items():
#            print "    ",k,":",v
#        print
#
#    print "lbm count=",len(_lbm_manager.lbm_map)

if __name__=="__main__":
    if len(sys.argv)==4:
        work_dir=sys.argv[1]
        r1=sys.argv[2]
        r2=sys.argv[3]

        start_time=time.time()
        publish=publisher()

        if publish.start(work_dir,r1,r2)==False:
            exit()

        publish.analyze_dependency()

        result_file=open("{0}_{1}_publishlist.txt".format(r1,r2),"w")
        try:
            for file in publish.get_publish_file_list():
                result_file.write((file+"\n").decode("gb18030"))
        except Exception as ee:
            print  ee
        finally:
            result_file.close()

        publish.stop()
        stop_time=time.time()
        print "time useage:",(stop_time-start_time)
    else:
        print "useage:python ",sys.argv[0]," work_dir svn_version1 svn_version2"

