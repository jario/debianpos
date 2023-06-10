#!/bin/bash

sudo apt install kaccounts-integration kaccounts-providers -y

#sudo apt-get install evolution evolution-ews -y

sudo apt install newsboat rednotebook -y

sudo apt install kubuntu-restricted-extras build-essential kfind partitionmanager kio-extras gufw -y

# sudo smplayer clementine kup-backup gwenview kfind partitionmanager


# first step, upgrade
sudo pkcon refresh && sudo pkcon update

# drivers
sudo ubuntu-drivers autoinstall
sudo ubuntu-drivers list
sudo ubuntu-drivers devices

sudo apt install kubuntu-driver-manager -y

# software
sudo apt install software-properties-common -y
#sudo apt-get install keepassxc screenfetch flameshot -y

# dev software
sudo apt install python-virtualenv python-dev python-pip -y

# enable all Startup Applications
#cd /etc/xdg/autostart
#sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop

# accelerate startup
sudo mv /etc/xdg/autostart/at-spi-dbus-bus.desktop /etc/xdg/autostart/at-spi-dbus-bus.disabled

sudo apt install mythes-pt-pt mythes-pt-br thunderbird-locale-pt-pt thunderbird-locale-pt-br hunspell-pt-pt hunspell-pt-br hyphen-pt-pt hyphen-pt-br -y

sudo apt install tlp tlp-rdw -y

sudo systemctl enable tlp && sudo tlp start

sudo apt install intel-microcode -y

sudo apt install ubuntu-restricted-extras -y

sudo apt install smplayer -y # baixar videos youtube

sudo apt install faad ffmpeg gstreamer1.0-fdkaac gstreamer1.0-libav gstreamer1.0-vaapi gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lame  libgstreamer1.0-0 sox twolame vorbis-tools -y

sudo apt install libegl1-mesa libgl1-mesa-dri libgl1-mesa-dri:i386 libgl1-mesa-glx libgl1-mesa-glx:i386 libglapi-mesa libglapi-mesa:i386 libgles2-mesa mesa-vulkan-drivers mesa-utils inxi -y

sudo apt install libreoffice libreoffice-l10n-pt-br libreoffice-style-breeze libreoffice-gtk3 libreoffice-kf5 -y

sudo apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip -y

sudo apt install stacer -y

cd /tmp && wget -O google-chrome-stable.deb 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'

sudo apt install ./google-chrome-stable.deb && cd

cd /tmp && wget -O dropbox.deb 'https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2022.12.05_amd64.deb'

sudo apt install ./dropbox.deb && cd

# android studio
#sudo su
#apt install default-jdk
#sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
#adduser SEU_USUARIO libvirt
#adduser SEU_USUARIO libvirt-qemu
#apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
#https://developer.android.com/studio/index.html
#tar -xvf android-studio-*-linux.tar.gz
#su -c 'mv /home/$USER/Downloads/android-studio /opt'
#su -c 'ln -s /opt/android-studio/bin/studio.sh /usr/bin/android-studio'
#su -c 'tee /usr/share/applications/jetbrains-studio.desktop <<ATALHO [Desktop Entry] Version=1.0 Type=Application Name=Android Studio Icon=/opt/android-studio/bin/studio.png Exec="/opt/android-studio/bin/studio.sh" %f Comment=The Drive to Develop Categories=Development;IDE; Terminal=false StartupWMClass=jetbrains-studio ATALHO'

