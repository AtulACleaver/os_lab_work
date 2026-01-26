#!/bin/bash

# WASS to print all prime numbers between 3 and 100

n=100
i=3

while test $i -le $n 
do
    is_prime=1
    j=2
    while test $j -le `expr $i / 2`
    do
        if test `expr $i % $j` -eq 0
        then
            is_prime=0
            break
        fi
        j=`expr $j + 1`
    done
    if test $is_prime -eq 1
    then
        echo "$i is a prime number"
    fi
    i=`expr $i + 1`
done