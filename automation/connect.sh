#!/bin/bash

WLAN=$(./list_WLANS.sh | awk '{print $1, $NF}' | awk -v FS== '{print $2}' | awk -v FS='/' '{print}' | sort -nrk1 | head -n 1 | awk -v FS=: '{print $2}')
echo "Connecting to:"
echo $WLAN

echo 'network={' > /etc/wpa_supplicant.conf
echo '        ssid="NETIASPOT-CDD280"' >> /etc/wpa_supplicant.conf
echo '        psk=fe892596e52b49d5511477bf009577cce945be7477ec71d289de6beab174fb18' >> /etc/wpa_supplicant.conf
echo '        priority=2' >> /etc/wpa_supplicant.conf
echo '        id_str="HOME"' >> /etc/wpa_supplicant.conf
echo '}' >> /etc/wpa_supplicant.conf
echo 'network={' >> /etc/wpa_supplicant.conf
echo '        ssid='$WLAN >> /etc/wpa_supplicant.conf
echo '        key_mgmt=NONE' >> /etc/wpa_supplicant.conf
echo '        priority=1' >> /etc/wpa_supplicant.conf
echo '        id_str="STUDY"' >> /etc/wpa_supplicant.conf
echo '}' >> /etc/wpa_supplicant.conf

systemctl restart wpa_supplicant
sudo dhclient -r wlan0
sudo dhclient wlan0
