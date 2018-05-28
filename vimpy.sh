#!/bin/bash

:<<!
作者：张乐
创建时间：2018.5.28 9:20
用途：新建python脚本并且初始化开头结尾
!

#shell脚本中$1代表程序后的第一个参数，$0表示该脚本的文件名，脚本是否输入要创建的文件名
if [ ! "$1" ]
then
	echo '请输入要新建的文件名称'
exit 1
fi

#如果该文件已经存在，则直接用vim打开，不存在则创建文件
if [ ! -f "$1" ]; then 
	touch "$1"
else
	vim "$1"
fi

#写入注释
echo "#-*- coding:utf-8 -*-">>"$1"
echo "">>"$1"
echo "'''">>"$1"
echo "作者：张乐">>"$1"
time=$(date "+%Y-%m-%d %H:%M:%S")
#echo ${time}
echo "创建时间："${time}  >>"$1"
echo "脚本用途:">>"$1"
echo "">>"$1"
echo "'''">>"$1"

vim "$1"
