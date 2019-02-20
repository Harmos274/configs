#!/bin/bash

DJ=$(find ~/ -warn -type d -iname "*$1*" -not -path "/home/ab/.config/Code - OSS/*" -not -path "/home/ab/.CLion*" 2> /dev/null | fzy -l 20)
cd $DJ
