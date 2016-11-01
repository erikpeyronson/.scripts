#!/bin/bash
              
BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)

if [ $BRIGHTNESS -ge "937" ]; then
    BRIGHTNESS=937
else
    BRIGHTNESS=$(($BRIGHTNESS+20))
fi

echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness
