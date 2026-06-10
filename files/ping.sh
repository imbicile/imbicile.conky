#!/bin/bash
if ping -c 1 -w 1 ipinfo.io &>/dev/null; then
    curl -ks https://ipinfo.io | jq -r '.ip'
else
    echo offline
fi
