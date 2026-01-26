#!/bin/bash

# Print all even numbers between 0 and n

echo "Enter the value of n:"
read n
i=0

while test $i -le $n
do
    if test `expr $i % 2` -eq 0
    then
        echo "$i is an even number"
    fi
    i=`expr $i + 1`
done

