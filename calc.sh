#!/bin/bash
read -p "please input expression >" exp 
#read -p "please input calc "
#echo "scale=4;$num1/$num2"|bc
read -p "Decimal >" dec
echo $(bc<<EOF
obase=10;
ibase=10;
scale=$dec;
$exp
EOF
)

