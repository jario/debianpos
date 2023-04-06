#!/bin/bash

apt install gdebi uget qbittorrent gparted


apt install ttf-mscorefonts-installer -y && fc-cache -f -v 

sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list' && sudo rm microsoft.gpg

sudo apt update && sudo apt install microsoft-edge-stable -y

echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | tee /etc/apt/sources.list.d/google-chrome.list


cd /tmp && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && cd ..

apt update && apt install google-chrome-stable


echo "deb https://deb.opera.com/opera-stable/ stable non-free" | tee /etc/apt/sources.list.d/opera-stable.list

cd /tmp && wget -q -O - https://deb.opera.com/archive.key | apt-key add - && cd ..


apt update && apt install opera-stable

echo "deb http://download.virtualbox.org/virtualbox/debian bullseye contrib" | tee /etc/apt/sources.list.d/virtualbox.list

cd /tmp && wget -q -O - https://www.virtualbox.org/download/oracle_vbox_2016.asc | apt-key add - && cd ..

apt update && apt install virtualbox-6.1

apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip

apt install intel-microcode

apt install chrome-gnome-shell

apt install tlp tlp-rdw

systemctl enable tlp && tlp start

apt install faad ffmpeg gstreamer1.0-fdkaac gstreamer1.0-libav gstreamer1.0-vaapi gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lame libavcodec-extra libavcodec-extra58 libavdevice58 libgstreamer1.0-0 sox twolame vorbis-tools

apt install gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad ffmpeg sox twolame vorbis-tools lame faad mencoder

apt install printer-driver-escpr openprinting-ppds hp-ppd printer-driver-gutenprint hplip

apt install -t bullseye-backports vlc 

apt install openshot handbrake

apt install telegram-desktop

apt install thunderbird thunderbird-l10n-pt-br

# apt install audacity
# apt install libdvd-pkg
# dpkg-reconfigure libdvd-pkg

apt install laptop-mode-tools

apt install tcpdump nmap mtr dnsutils whois net-tools cifs-utils iptables-persistent locate sysv-rc-conf rcconf ncdu apt-transport-https cheese vlc cups system-config-printer rar unrar vim bash-completion ipcalc htop bmon neofetch arping grc fzf pwgen mintstick sudo
