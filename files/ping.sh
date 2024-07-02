#!/bin/bash
if ping -c 1 -w 1 8.8.8.8 &>/dev/null; then
    curl https://ifconfig.me/
else
    echo offline
fi
