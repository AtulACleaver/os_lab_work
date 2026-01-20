#!/bin/bash

# Pattern 3:
# 4 3 2 1
# 4 3 2
# 4 3
# 4

n=4
i=$n

while [ $i -ge 1 ]
do
    j=$n
    while [ $j -ge $i ]
    do
        echo -n "$j "
        j=`expr $j - 1`
    done
    echo ""
    i=`expr $i - 1`
done