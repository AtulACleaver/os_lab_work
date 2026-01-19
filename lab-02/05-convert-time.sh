#!/bin/bash

echo "Enter the time in seconds: "
read time

hours=`expr $time / 3600`
minutes=`expr \( $time % 3600 \) / 60`
seconds=`expr $time % 60`

echo "$time seconds is equal to $hours hours, $minutes minutes, and $seconds seconds."

# Output:
# Enter the time in seconds: 3661
# 3661 seconds is equal to 1 hours, 1 minutes, and 1 seconds.