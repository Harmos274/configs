#!/bin/sh

SERVICE='compton'

if ps ax | grep -v grep | grep -v $0 | grep $SERVICE > /dev/null
then
    killall -q compton
else
    compton -b
fi

