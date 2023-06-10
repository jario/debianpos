#!/bin/bash

## wget and curl install

#Discord
cd ~/Downloads/ && wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb && sudo gdebi discord.deb && cd 


# nodejs nvm npm iojs angular ionic
# conectar ao git primeiro

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

nvm install node

nvm install iojs

#sudo npm install -g @vue/cli
#sudo npm install -g prettier

# firefox

wget -O firefox-stable-64.tar.bz2 -c "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=pt-BR"

# wget -O firefox-stable-32.tar.bz2 -c "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux&lang=pt-BR"

tar -vxjf firefox-stable-*.tar.bz2 && mv firefox firefox-stable

sudo mv firefox-stable /opt

sudo ln -s /opt/firefox-stable/firefox-bin /usr/bin/firefox-stable && sudo ln -s /opt/firefox-stable/browser/chrome/icons/default/default128.png /usr/share/pixmaps/firefox-stable.png

wget -c "https://raw.githubusercontent.com/blogopcaolinux/shortcuts/master/firefox/firefox-stable.desktop" && sudo desktop-file-install --dir=/usr/share/applications firefox-stable.desktop

sudo update-desktop-database /usr/share/applications

sudo update-alternatives --install "/usr/bin/x-www-browser" "x-www-browser" "/usr/bin/firefox-stable" 1

sudo update-alternatives --set x-www-browser /usr/bin/firefox-stable
