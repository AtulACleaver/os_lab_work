# WASS to print Fibonacci series up to n terms using while loop

#!/bin/bash
echo "Enter the number of terms:"
read n
a=0
b=1
count=0

while [ $count -lt $n ]
do
    echo "$a "
    fn= `expr $a + $b`
    a=$b
    b=$fn
    count=`expr $count + 1`
done