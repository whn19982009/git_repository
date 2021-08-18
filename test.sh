#!/bin/bash
#read -p "please input expression >" exp 
#read -p "please input calc "
#echo "scale=4;$num1/$num2"|bc
#read -p "Decimal >" dec
#echo $(bc<<EOF
#obase=10;
#ibase=10;
#scale=$dec;
#$exp
#EOF
#)
read filename
read url
if test -w $filename && test -n $url
then
        echo $url > $filename
        echo "success"
else
        echo "fail"
fi
<<<<<<< HEAD
var="this is master"
=======
var="Creating a new branch is quick and simple"
>>>>>>> far_test1

