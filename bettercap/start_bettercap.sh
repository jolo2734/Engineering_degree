#!/bin/bash

#filtrowanie wszystkich przechwytywania
sudo rm /home/ubuntu/credentials-bettercap/*
grep -in -E "pass|login|password|user" $HOME/bettercap-logs/* > $HOME/credentials-bettercap/credentials_$(date +%d-%m-%Y_%I:%M%p).txt

sudo ./bettercap
