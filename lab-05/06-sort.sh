#!/bin/bash

# sort all numbers entered by user in descending order

echo "Enter total number of elements:"
read n

i=1
echo "Enter Elements:"

while [ $i -le $n ]
do
    echo "Enter number $i:"
    read numbers[$i]
    i=`expr $i + 1`
done

echo "Numbers in Descending Order:"

for (( i = 1; i <= n; i++ ))
do
    for (( j = i + 1; j <= n; j++ ))
    do
        if [ ${numbers[i]} -lt ${numbers[j]} ]
        then
            temp=${numbers[i]}
            numbers[i]=${numbers[j]}
            numbers[j]=$temp
        fi
    done
done

for (( i = 1; i <= n; i++ ))
do
    echo "${numbers[i]}"
done