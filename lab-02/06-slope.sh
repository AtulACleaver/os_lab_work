#!/bin/bash

# This script calculates the slope between two points (x1, y1) and (x2, y2)

echo "enter x1: "
read x1

echo "enter x2: "
read x2

echo "enter y1: "
read y1

echo "enter y2: "
read y2

slope=`echo "scale=2; ( $y2 - $y1 ) / ( $x2 - $x1 )" | bc`
echo "Slope = $slope"


