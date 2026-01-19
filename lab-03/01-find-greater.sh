#!/bin/bash

echo "Enter two numbers: "
read a
read b

if test $a -gt $b
then
    echo "$a is greater"
else
    echo "$b is greater"
fi