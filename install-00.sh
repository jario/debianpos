#!/bin/bash

sudo apt install git curl wget aptitude -y

# SOMENTE EM DEBIAN BASICO NO GUI Ly Console Manager
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



# sudo echo "deb http://deb.debian.org/debian bullseye-backports main" | sudo tee -a /etc/apt/sources.list

sudo apt-get update

sudo apt -t bullseye-backports upgrade

sudo reboot
