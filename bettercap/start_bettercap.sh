#!/bin/bash

#filtrowanie wszystkich przechwytywania
sudo rm /home/ubuntu/credentials-bettercap/*
grep -in -E "pass|login|password|user" $HOME/bettercap-logs/* > $HOME/credentials-bettercap/credentials_$(date +%d-%m-%Y_%I:%M%p).txt

sudo ./$HOME/inzynierka/bettercap/start_bettercap.sh

touch /home/ubuntu/plik_testowy1.txt
touch $HOME/plik_testowy2.txt
