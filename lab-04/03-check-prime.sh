# WASS to check prime number using while loop

#!/bin/bash

echo "Enter a number:"
read num
is_prime=1

i=2
# while loop with sqrt calculation using expr
while [ $i -le `` expr $num ** 0.5`` ]
do
    if test `expr $num % $i` -eq 0
    then
        is_prime=0
        break
    fi
    i=`expr $i + 1`
done

if test $is_prime -eq 1 && test $num -gt 1
then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi