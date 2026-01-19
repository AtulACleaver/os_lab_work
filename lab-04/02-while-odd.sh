# WASS to print odd numbers using while loop using if condition

#!/bin/bash
num=1
while [ $num -le 10 ]
do
    if test `expr $num % 2` -ne 0
    then
        echo "Odd number: $num"
    fi
    num=`expr $num + 1`
done