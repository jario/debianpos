#!/bin/bash

sudo apt install aptitude uget qbittorrent -y

sudo apt install ttf-mscorefonts-installer -y && fc-cache -f -v

sudo apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip -y

sudo apt install intel-microcode -y

#apt install chrome-gnome-shell

sudo apt install tlp tlp-rdw -y
sudo systemctl enable tlp && sudo tlp start

sudo apt install faad ffmpeg gstreamer1.0-fdkaac gstreamer1.0-libav gstreamer1.0-vaapi gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lame libavcodec-extra libavcodec-extra58 libavdevice58 libgstreamer1.0-0 sox twolame vorbis-tools -y

sudo apt install gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad ffmpeg sox libsox-fmt-all twolame vorbis-tools lame faad mencoder -y

#apt install printer-driver-escpr openprinting-ppds hp-ppd printer-driver-gutenprint hplip

sudo apt install vlc openshot handbrake -y

sudo apt install telegram-desktop -y

#sudo apt install thunderbird thunderbird-l10n-pt-br -y

# apt install audacity
# apt install libdvd-pkg
# dpkg-reconfigure libdvd-pkg

sudo apt install laptop-mode-tools flashrom  -y

# apt install tcpdump nmap mtr dnsutils whois net-tools cifs-utils iptables-persistent locate sysv-rc-conf rcconf ncdu apt-transport-https cheese vlc cups system-config-printer rar unrar vim bash-completion ipcalc htop bmon neofetch arping grc fzf pwgen mintstick sudo
