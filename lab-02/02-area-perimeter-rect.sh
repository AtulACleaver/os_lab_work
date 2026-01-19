#!/bin/bash

# WASS to find the area and perimeter of a rectangle

echo "Enter length and breadth of rectangle: "
read length
read breadth

area=`echo "scale=2; $length * $breadth" | bc`
perimeter=`echo "scale=2; 2 * ( $length + $breadth )" | bc`

# why \+ doesnt work here but you have to do \*? - because + has a special meaning in regex 

echo "Area = $area, Perimeter = $perimeter"