#!/bin/bash

# To find sum of all prime numbers below a given number N

echo "Enter a number: "
read N

sum=0

is_prime() {
    local num=$1
    if (( num < 2 )); then
        return 1
    fi
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            return 1
        fi
    done
    return 0
}

for (( num=2; num<N; num++ )); 
do
    if is_prime $num; then
        sum=$((sum + num))
    fi
done

echo "Sum of all prime numbers below $N is: $sum"