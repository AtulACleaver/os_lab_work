#!/bin/bash

# WASS to print all palindromes from 10 to 100

num=100
while [ $num -ge 10 ]
do
    rev=0
    temp=$num
    while [ $temp -gt 0 ]
    do
        digit=`expr $temp % 10`
        rev=`expr $rev \* 10 + $digit`
        temp=`expr $temp / 10`
    done
    if test $rev -eq $num
    then
        echo "$num is a palindrome"
    fi
    num=`expr $num - 1`
done