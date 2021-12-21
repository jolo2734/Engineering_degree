#!/bin/bash

echo "Certificate installation..."
openssl x509 -in bettercap-ca.pem -inform PEM -out bettercap-ca.crt
sudo cp bettercap-ca.crt /usr/local/share/ca-certificates/extra/bettercap-ca.crt
sudo update-ca-certificates
echo "Finished"