#!/bin/bash

cd keyd-setup
git clone https://github.com/rvaiya/keyd
cd keyd
make
sudo make install
mv ../default.conf /etc/keyd/default.conf
sudo systemctl enable keyd 
sudo systemctl start keyd
