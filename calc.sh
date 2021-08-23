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
        echo "Thanks for using."
        break
        ;;
    "calc")
        while read -p "Please input expression >" exp
        do
            if [ "$exp" = "END" ] ; then
                break
            else
                res=$(echo "obase=10;ibase=10;scale=$dec;$exp"|bc)
                echo "The result is $res"
                if [ $out_flag = "y" ]; then

                    echo "$exp = $res" >>$file_name
                fi
            fi
        done
        ;;
    "set")
        while read -p "Please input scale >" temp1
        do
            echo "set scale =$temp1"
            if [[ $temp1 =~ ^\d+$ ]] ; then
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
        ;;
    esac
done