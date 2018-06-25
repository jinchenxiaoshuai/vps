#!/bin/bash
timestamp=`date +%s`
echo 系统时间$timestamp
filepath=/root/date_test.sh
filetimestamp=`stat -c %Z $filepath`
echo 文件最后修改时间戳：$filetimestamp
timecha=$[$timestamp - $filetimestamp]
echo 时间差$timecha

