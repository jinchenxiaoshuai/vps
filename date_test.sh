#!/bin/bash
timestamp=`date +%s`
echo 系统时间$timestamp
filepath=/root/date_test.sh
filetimestamp=`stat -c %Z $filepath`
echo 文件最后修改时间戳：$filetimestamp
time_delta=$[$timestamp - $filetimestamp]
echo 时间差$time_delta
if [ $time_delta -gt 60 ];
then
echo 'before 60s'
else
echo 'in last 60s'
fi


