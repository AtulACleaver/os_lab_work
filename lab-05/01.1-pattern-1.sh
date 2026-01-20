#!bin/bash

# Pattern 1:
# 1
# 1 2
# 1 2 3
# 1 2 3 4

n=4
i=1

while [ $i -le $n ]
do
  j=1
  while [ $j -le $i ]
  do
    echo -n "$j "
    j=`expr $j + 1`
    done
    echo 
    i=`expr $i + 1`
done

# Output:
# 1
# 1 2
# 1 2 3
# 1 2 3 4