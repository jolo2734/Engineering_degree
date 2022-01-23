#!/bin/bash

#filtrowanie wszystkich przechwytywania
sudo rm /home/ubuntu/credentials-bettercap/*
grep -in -E "pass|login|password|user" /home/ubuntu/bettercap-logs/* > /home/ubuntu/credentials-bettercap/credentials_$(date +%d-%m-%Y_%I:%M%p).txt

sudo /home/ubuntu/inzynierka/bettercap/start_bettercap.sh

