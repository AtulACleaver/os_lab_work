#!/bin/bash

echo "enter number:- "
read n

if test `expr $n % 2` -eq 0
then
    echo "Even number"
else
    echo "Odd number"
fi