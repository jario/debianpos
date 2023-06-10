#!/bin/bash

sudo snap remove --purge firefox && sudo snap remove --purge snap-store && sudo snap remove --purge gnome-3-38-2004 && sudo snap remove --purge gtk-common-themes && sudo snap remove --purge snapd-desktop-integration && sudo snap remove --purge bare && sudo snap remove --purge core20 && sudo snap remove --purge snapd

sudo apt purge snap snapd -y

sudo apt autoremove --purge snapd

sudo systemctl stop snapd.socket && sudo systemctl stop snapd.service && sudo systemctl stop snapd.seeded.service

sudo systemctl disable snapd.socket && sudo systemctl disable snapd.service && sudo systemctl disable snapd.seeded.service

sudo rm -rf /var/cache/snapd/

sudo rm -rf ~/snap

# nosnap
cat > ./temp << "EOF"
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF
sudo cp ./temp /etc/apt/preferences.d/nosnap;rm ./temp

sudo apt update

sudo apt purge firefox

#firefox-no-snap
cat > ./temp << "EOF"
Package: firefox*
Pin: release o=Ubuntu*
Pin-Priority: -1
EOF
sudo cp ./temp /etc/apt/preferences.d/firefox-no-snap;rm ./temp

sudo add-apt-repository ppa:mozillateam/ppa

sudo apt update

sudo apt install -t 'o=LP-PPA-mozillateam' firefox

echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

sudo apt update

#mozillafirefoxppa
cat > ./temp << "EOF"
Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501
EOF
sudo cp ./temp /etc/apt/preferences.d/mozillafirefoxppa;rm ./temp

