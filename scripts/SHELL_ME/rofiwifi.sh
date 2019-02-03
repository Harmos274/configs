#!/bin/bash

SSID=$(iw wlp3s0 scan | grep SSID | cut -f 2 -d " "| rofi -dmenu -theme /home/ab/rofi_themes/putain.rasi -location 4 -yoffset -263 -xoffset -400)

if [ "$SSID" ]; then
    PASSWD=$(rofi -dmenu -theme /home/ab/rofi_themes/putain.rasi -location 4 -yoffset -263 -xoffset -400 -lines 0 -password)
    if [ "$PASSWD" ]; then
        nmcli dev wifi connect $SSID password $PASSWD
    fi
fi
