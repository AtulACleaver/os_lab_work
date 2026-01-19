#!/bin/bash

echo "enter initial velocity: "
read u

echo "enter time: "
read t

echo "enter accleration: "
read a

s=`echo "scale=2; ($u * $t) + 0.5 * $a * $t * $t" | bc`
echo "Distance = $s"
