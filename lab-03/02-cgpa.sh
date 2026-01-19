#!/bin/bash
echo "Enter CGPA: "
read cgpa

cgpa_int = `expr $cgpa / 1`

if test "$cgpa_int" -ge 9
then
    echo "Grade: O"
elif test "$cgpa_int" -ge 8
then
    echo "Grade: A"
elif test $cgpa_int -ge 7 
then
    echo "Grade: B"
elif test $cgpa_int -ge 7 
then
    echo "Grade: C"
else
    echo "Grade: Fail"
fi
