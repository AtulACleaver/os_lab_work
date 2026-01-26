#!/bin/bash

# Print all armstrong numbers between 1 and 1000

n=10000
i=1
while [ $i -le $n ]
do
    sum=0
    temp=$i
    while [ $temp -gt 0 ]
    do
        digit=`expr $temp % 10`
        sum=`expr $sum + $digit \* $digit \* $digit`
        temp=`expr $temp / 10`
    done
    if test $sum -eq $i
    then
        echo "$i is an armstrong number"
    fi
    i=`expr $i + 1`
done


