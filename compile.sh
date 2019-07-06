#!/bin/sh

echo "Installing Build-essentials"
apt-get update
apt-get install -y build-essential

echo "Installing dependencies"
apt-get install -y libnl-3-dev libnl-3-200 libssl-dev libnl-genl-3-200 libnl-genl-3-dev libnl-idiag-3-dev

echo "Starting"
cd hostapd

echo "Configuring"
cp defconfing .config

echo "Compiling"
make 

echo "Installing"
sudo make install

