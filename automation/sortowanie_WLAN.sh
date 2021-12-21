#!/bin/bash

sudo iwlist wlan0 scan | grep -E 'Quality|ESSID' > available_WLAN.txt
FILE="/home/ubuntu/available_WLAN.txt"



while IFS= read -r line
do

    if [[ "$line" =~ Quality ]]; then
        printf "%s " "$line"  | awk '{print $1, $NF}' | awk -v FS== '{print $2}' | awk -v FS='/' '{print}' | sort -nrk1
    fi


    if [[ "$line" =~ ESSID ]]; then
        echo "$line"
    fi



done < "$FILE"

# | awk '{print $1, $NF}' | awk -v FS== '{print $2}' | awk -v FS='/' '{print}' | sort -nrk1
