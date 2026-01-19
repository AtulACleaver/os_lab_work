#!/bin/bash
echo "Enter °F temperature: "
read f_temp

c_temp=`expr \( $f_temp - 32 \) \* 5 / 9`

echo "°C temperature is: $c_temp"