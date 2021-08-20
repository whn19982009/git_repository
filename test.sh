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
url="https://WWW.baidu_ps.com"
#echo ${url#*ps}
#echo ${url##*ps}
#echo ${url%*ps}
#echo ${url%%*ps}
#================================
echo "$(echo ${url} | tr '[:upper:]' '[:lower:]')"
echo "$(echo ${url} | tr '[:lower:]' '[:upper:]')"
