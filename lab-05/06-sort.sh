#!/bin/bash

# sort all numbers entered by user in descending order

echo "Enter the numbers separated by space:"
read -a numbers

n=${#numbers[@]}

for (( i = 0; i < n; i++ ))
do
    for (( j = i + 1; j < n; j++ ))
    do
        if (( numbers[i] < numbers[j] ))
        then
            temp=${numbers[i]}
            numbers[i]=${numbers[j]}
            numbers[j]=$temp
        fi
    done
done
echo "Numbers in descending order:"
for num in "${numbers[@]}"
do
    echo "$num"
done