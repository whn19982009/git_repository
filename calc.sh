#!/bin/bash
#dec表明输出小数时保留几位小数
res=0
dec=2
out_flag="n"
file_name="calc_result.txt"
select op_number in "calc" "set" "output to file" "esc"
do
    case $op_number in
    "esc")
        echo -e "\033[32mThanks for using.\033[0m"
        break
        ;;
    "calc")
        while read -p "Please input expression >" exp
        do
            if [ "$exp" = "END" ] ; then
                break
            else
                res=$( printf "%."$dec"f" $( echo "obase=10;ibase=10;scale=$dec;$exp"|bc ) )
                echo -e "\nThe result is \033[33m$res\033[0m  (scale:\033[31m$dec\033[0m)\n"
                if [ $out_flag = "y" ]; then
                    echo -e "output to \033[31mfile\033[0m"
                    echo "$exp = $res" >>$file_name
                else
                    echo -e "output to \033[32mscreen\033[0m"
                fi
            fi
        done
        ;;
    "set")
        while read -p "Please input scale >" temp1
        do
            if [[ $temp1 =~ ^[0-9]*$ ]] ; then
                echo -e "set scale = \033[31m$temp1\033[0m"
                break
            else
                echo "Please input right scale number"
            fi
        done
        dec=$temp1
        ;;
    "output to file")
        read -p "output to file? [y\n]" temp2
        out_flag=$temp2
        if [ $out_flag = "y" ] ; then
            echo -e "Now output to \033[31mfile\033[0m."
        else
            echo -e "Now output to \033[32mscreen\033[0m."
        fi
        ;;
    esac
done