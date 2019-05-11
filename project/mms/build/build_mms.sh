#!/bin/bash
#wrote by shlian at 2019.05.10
echo "********************initializ..."
rm -rf webserver
cp -rf ../webserver .
rm -rf webserver/logs/*
echo "********************initialized"

echo "********************compiling......"
python -O -m compileall -b webserver
if [ $? -ne 0 ] ; then
    echo -e "\n**************************************************"
    echo "* python error ,please use virtualenv or python3 *"
    echo -e "**************************************************\n"
    exit $?
fi
echo "********************compiled"

echo "!!!!!!!!!!!!!!!!!!!!deleting files......"
rm -rf webserver/manage.py
rm -rf webserver/uwsgi.status
rm -rf webserver/uwsgi.pid
find webserver/kline/ -name "*.py"|xargs rm -rf
find webserver -name "__pycache__"|xargs rm -rf 
find webserver -name ".gitkeep"|xargs rm -rf 
find webserver/mms -name "*.py"|grep -v 'settings.py\|wsgi.py'|xargs rm -rf
echo "!!!!!!!!!!!!!!!!!!!!deleted"

echo "********************taring...."
branch_name=$(git branch)
branch_name=${branch_name##* }
version_info=$(git describe)
time_stamp=`date +%Y%m%d%H%M%S`
echo $branch_name >webserver/version
echo $version_info>>webserver/version
echo $time_stamp>>webserver/version

tar -czvf mms_"$branch_name"_"$version_info".tar.gz ./webserver 
if [ $? -ne 0 ] ; then
    echo "tar is error"
    exit $?
fi
rm -rf webserver/

echo "done!!!"


