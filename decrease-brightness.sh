#!/bin/bash
              
BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ $BRIGHTNESS -lt "0" ]; then
    BRIGHTNESS=0
else
    BRIGHTNESS=$(($BRIGHTNESS-20))
fi

echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness
