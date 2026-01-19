#!/bin/bash

# WASS to find the area and perimeter of a triangle without using the 3rd variable
echo "Enter base"
read base
echo "Enter height"
read height

area=`echo "scale=2; ( $base * $height ) / 2" | bc`
perimeter=`echo "scale=2; 2 * ( $base + $height )" | bc`

echo "Area = $area, Perimeter = $perimeter"