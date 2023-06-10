#!/bin/bash

sudo apt install curl wget aptitude -y
sudo apt install git gitk git-gui git-flow -y

# SOMENTE BASICO NO GUI Ly Console Manager
# Needed packages
# sudo xorg display server installation
# sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput xorg-dev
# sudo apt install -y build-essential 
# sudo apt install -y libpam0g-dev libxcb-xkb-dev
# cd /usr/share/
# sudo git clone --recurse-submodules https://github.com/fairyglade/ly
# cd ly
# sudo make
# sudo make install installsystemd
# sudo systemctl enable ly.service

sudo apt install isenkram-cli -y
sudo isenkram-autoinstall-firmware

sudo apt-get update


