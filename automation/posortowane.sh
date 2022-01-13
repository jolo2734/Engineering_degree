#!/bin/bash

./sortowanie_WLAN.sh | awk '{print $1, $NF}' | awk -v FS== '{print $2}' | awk -v FS='/' '{print}' | sort -nrk1 | head -n 1 | awk -v FS=: '{print $2}'
