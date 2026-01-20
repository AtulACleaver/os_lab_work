#!/bin/bash

# Pattern 2:
# 1 2 3
# 1 2
# 1

n=4
i=$n

while [ $i -ge 1 ]
do
    j=1
while [ $j -le $i ]
        do
        echo -n "$j "
        j=`expr $j + 1`
        done
    echo ""
    i=`expr $i - 1`
done

# Output:
# 1 2 3
# 1 2
# 1