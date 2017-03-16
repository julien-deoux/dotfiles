#!/bin/sh

# --------------------------------------------------
# Manual backlight manager for inter-powered laptops
# --------------------------------------------------

# This acts as a temporary replacement to xbacklight since it can't find my
# device anymore for some reason.

currentBrightness=$(cat /sys/class/backlight/intel_backlight/brightness)
maxBrightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)

if [[ $# -eq 0 ]]; then
    echo "Current brightness: $currentBrightness"
elif [[ $# -eq 2 ]]; then
    if [[ $1 == "-inc" ]]; then
        newBrightness=$(($currentBrightness + $2))
    elif [[ $1 == "-dec" ]]; then
        newBrightness=$(($currentBrightness - $2))
    else
        echo "Usage: /path/to/backlight.sh [-inc|-dec] VALUE"
    fi
    if [[ $newBrightness -gt $maxBrightness ]]; then
        newBrightness=$maxBrightness
    fi
    if [[ $newBrightness -lt 0 ]]; then
        newBrightness=0
    fi
    echo $newBrightness > /sys/class/backlight/intel_backlight/brightness
else
    echo "Usage: /path/to/backlight.sh [-inc|-dec] VALUE"
fi
