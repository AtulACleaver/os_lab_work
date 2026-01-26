#!/bin/bash

# Pattern 4:
# 3 2 1
#   2 1
#     1

n=4
i=1

while [ $i -le $n ]
do
    # Print leading spaces
    j=1
    while [ $j -lt $i ]
    do
        echo -n "  "
        j=`expr $j + 1`
    done
    # Print numbers
    j=$i
    while [ $j -le $n ]
    do
        echo -n "$j "
        j=`expr $j + 1`
    done
    echo ""
    i=`expr $i + 1`
done