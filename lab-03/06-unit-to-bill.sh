#!/bin/bash
echo "Enter number of units consumed:"
read units

if test $units -le 100
then
  bill=`expr $units \* 2`
elif test $units -le 150
then
  bill=`expr $units \* 4`
elif test $units -le 250
then
  bill=`expr $units \* 6`
else
  bill=`expr $units \* 8`
fi

echo "Electricity Bill = Rs $bill"