#!/bin/bash

echo "Num: "
read n

if test $n -lt 0
then
    echo "-ve"
elif test $n -eq 0
then
    echo "0"
else
    echo "+ve"
fi