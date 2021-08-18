#!/bin/bash
var1=10
var2=20
if [[$var1 =~ ^[0-9]]+$ && $var2 =~ ^[0-9]+$ ]];then
    if [$var1 -lt $var2];then
        echo "var2>var1"
    elif [$var1 -eq $var2];then
        echo "var2==var1"
    else
        echo "var1>var2"
    fi

else
    echo "please enter the correct number"
fi
unset var1 var2
