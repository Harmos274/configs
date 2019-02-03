#!/usr/bin/env bash

icon="$HOME/Pictures/ARCHLINUX.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg" --radius 50 --indpos="960:800" --ringcolor=50759950 --ringvercolor=00000000  --insidecolor=00000000 --linecolor=00000000 --insidewrongcolor=00000000 --insidevercolor=00000000  --veriftext=" " --wrongtext=" " --noinputtext=" " --composite --indicator
