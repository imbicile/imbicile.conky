#!/bin/sh
sleep 5
if pidof conky | grep "[0-9]" >/dev/null; then
    exec killall conky
else
    conky -d -c ~/.conky/conky_left &
    conky -d -c ~/.conky/conky_right &
    exit 0
fi
