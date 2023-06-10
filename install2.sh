# vs code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

rm -f packages.microsoft.gpg

sudo apt install apt-transport-https

sudo apt update

sudo apt install code
# end code
# all 
sudo apt install apache2 apache2-utils y
sudo apt install ufw gufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw set default policy
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow 80
sudo ufw allow https 
sudo ufw allow 443

#ownCloud
echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/server:/10/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/isv:ownCloud:server:10.list

curl -fsSL https://download.opensuse.org/repositories/isv:ownCloud:server:10/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/isv_ownCloud_server_10.gpg > /dev/null

sudo apt update

sudo apt install owncloud-complete-files

sudo chown -R $USER:www-data /var/www 
sudo chmod -R 775 /var/www

sudo usermod -a -G www-data $USER  

sudo chmod -R 775 /var/www/owncloud
sudo chown -R $USER:www-data /var/www/owncloud
sudo usermod -a -G www-data $USER /var/www/owncloud


sudo apt install php-intl php-soap 


