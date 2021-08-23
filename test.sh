#!/bin/bash
#================================
#   $加数字表示传进当前脚本的第几个参数
#echo "shell脚本本身的名字:$0"
#echo "第一个参数:$1"
#echo "第二个参数:$2"
#echo "第四个参数:$4"
#echo "传入参数个数:$#"
#echo "传入的所有参数:$@"
#================================
#url="https://WWW.baidu_ps.com"
#echo ${url#*ps}
#echo ${url##*ps}
#echo ${url%*ps}
#echo ${url%%*ps}
#================================
#echo "$(echo ${url} | tr '[:upper:]' '[:lower:]')"
#cho "$(echo ${url} | tr '[:lower:]' '[:upper:]')"
#================================
read tel
file_name="calc_result.txt"
if [[ $tel =~ ^[0-9]*[1-9][0-9]*$ ]] ; then
    #echo "true" >>calc_result.txt
    echo "true" >>$file_name
else
    echo "false" >>calc_result.txt
fi