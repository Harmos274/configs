#!/bin/bash

CHOICE=$(printf '\n\t\t  » Stop\n\t\t  » Restart\n\t\t  » Logout\n\t\t  » Lock\n' | rofi -dmenu -p " " -config /home/ab/rofi_themes/wola -fake-transparency)

if [ "$CHOICE" = "		  » Stop" ]; then
    systemctl poweroff
    exit 0
fi

if [ "$CHOICE" = "		  » Restart" ]; then
    systemctl reboot
    exit 0
fi

if [ "$CHOICE" = "		  » Logout" ]; then
    i3-msg exit
    exit 0
fi

if [ "$CHOICE" = "		  » Lock" ]; then
    /home/ab/.bin/.scripts/lock.sh
    exit 0
fi

   

         
