#!/bin/bash

# WASS to swap two numbers without using a temporary variable

echo "Enter two numbers: "
read a
read b

a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`

echo "After swapping, first number = $a, second number = $b"