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

