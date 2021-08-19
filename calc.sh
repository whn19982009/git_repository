#!/bin/bash
#dec表明输出小数时保留几位小数
res=0
dec=2
while true
do
    read -p "please input operate number >" op_number
    case $op_number in
    "esc")
        read -p "output to file? [y\n]" temp1

        exit
        ;;
    1)
        read -p "please input expression >" exp 
        res=$(echo "obase=10;ibase=10;scale=$dec;$exp"|bc)
        echo "the result is $res"
        
        ;;
    2)
        read -p "please input scale >" temp2
        dec=$temp1
        ;;
    *)
        echo "please input right op_number"
        ;;
    esac
done