#!/bin/bash
# WASS to print all prime factors of a given number using unitl loop


echo "Enter a number:"
read num
factor=2

until [ $num -le 1 ]
do
    if test `expr $num % $factor` -eq 0
    then
        echo "Prime Factor: $factor"
        num=`expr $num / $factor`
    else
        factor=`expr $factor + 1`
    fi
done