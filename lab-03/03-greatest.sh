#!/bin/bash

echo "Read 3 numbers: "
read a
read b
read c

if test $a -gt $b && test $a -gt $c
then
    echo "$a is greatest"
elif test $b -gt $a && test $b -gt $c
then 
    echo "$b is greatest"
else
    echo "$c is greatest"
fi
