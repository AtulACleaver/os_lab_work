# WASS to reverse a number , find sum of digits and check if it is palindrome or not using while loop

#!/bin/bash
echo "Enter a number:"
read num
original_num=$num
reverse=0
sum=0

while [ $num -gt 0 ]
do
    digit=`expr $num % 10`
    reverse=`expr $reverse \* 10 + $digit`
    sum=`expr $sum + $digit`
    num=`expr $num / 10`
done

if test $original_num -eq $reverse
then
    echo "$original_num is a palindrome."
else
    echo "$original_num is not a palindrome."
fi

echo "Sum of digits: $sum"