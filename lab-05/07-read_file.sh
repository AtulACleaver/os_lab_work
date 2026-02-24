#!/bin/bash

# WASS to read a name of file, check if it exists, and if it does, print its contents line by line with line numbers

echo "Enter the file name:"
read filename

if test -f "$filename"
then
    line_number=1
    while IFS= read -r line
    do
        echo "$line_number: $line"
        line_number=`expr $line_number + 1`
    done < "$filename"
else
    echo "File '$filename' does not exist."
fi  

# Sample Output:
# Enter the file name:
# myfile.txt
# 1: This is the first line.
# 2: This is the second line.
# 3: This is the third line.
# Or if file does not exist:
# File 'myfile.txt' does not exist.