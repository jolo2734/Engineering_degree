#!/bin/bash

sudo iwlist wlan0 scan | grep -E 'Quality|ESSID' > /home/ubuntu/available_WLAN.txt
FILE="/home/ubuntu/available_WLAN.txt"



while IFS= read -r line
do

    if [[ "$line" =~ Quality ]]; then
        printf "%s " "$line"
    fi


    if [[ "$line" =~ ESSID ]]; then
        echo "$line"
    fi



done < "$FILE"

