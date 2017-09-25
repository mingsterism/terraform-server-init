#!/bin/bash
echo "Provisioning nodeInit.sh ..."
sudo apt-get install -y npm 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
