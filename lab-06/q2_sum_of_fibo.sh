#!/bin/bash

# To find sum of all Fibonacci numbers below a given number N

echo "Enter a number: "
read N

sum=0
a=0
b=1
while test $a -le $N; do
    sum=`expr $sum + $a`
    fn=`expr $a + $b`
    a=$b
    b=$fn
done
echo "Sum of all Fibonacci numbers below $N is: $sum"