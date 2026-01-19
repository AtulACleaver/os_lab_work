#!/bin/bash
echo "Enter °F temperature: "
read f_temp

c_temp=`echo "scale=2; ( $f_temp - 32 ) * 5 / 9" | bc`

echo "°C temperature is: $c_temp"