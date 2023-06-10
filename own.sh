#!/bin/bash

sudo apt-get install apt-transport-https

# php 7.4
sudo apt install php php-cli php-common php-json php-opcache php-mysql php-mbstring php-zip php-fpm php-intl php-gd libapache2-mod-php php-mbstring php-curl php-zip php-json php-xml 

sudo curl -o /etc/apt/trusted.gpg.d/mariadb_release_signing_key.asc 'https://mariadb.org/mariadb_release_signing_key.asc'

sudo sh -c "echo 'deb https://mirror.nodesdirect.com/mariadb/repo/10.11/debian bullseye main' >>/etc/apt/sources.list"

sudo apt update && sudo apt install mariadb-server mariadb-client -y

#sudo mysql_secure_installation
# mysql -u root -p 
#CREATE DATABASE owncloud character set utf8 collate utf8_bin;
# -- site owncloud
# sudo mysql --user=root -p
# CREATE USER 'dbadmin'@'localhost' IDENTIFIED BY 'password';
# GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'localhost' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
# exit

#sudo apt install phpmyadmin
#sudo dpkg-reconfigure phpmyadmin

sudo apt-get install postgresql php-pgsql
#sudo -u postgres -c "createuser -e -P owncloud"
#sudo -u postgres -c "createdb -e -O owncloud owncloud"

echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/server:/10/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/isv:ownCloud:server:10.list

sudo curl -fsSL https://download.opensuse.org/repositories/isv:ownCloud:server:10/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/isv_ownCloud_server_10.gpg > /dev/null

sudo apt update && sudo apt install owncloud-complete-files

wget -nv https://download.owncloud.com/desktop/ownCloud/stable/latest/linux/Debian_11/Release.key -O - | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/owncloud.gpg > /dev/null

echo 'deb https://download.owncloud.com/desktop/ownCloud/stable/latest/linux/Debian_11/ /' | sudo tee -a /etc/apt/sources.list.d/owncloud.list

sudo apt update && sudo apt install owncloud-client -y


sudo chmod -R 0770 /var/www/owncloud/data
sudo chmod -R 775 /var/www/owncloud
sudo chown -R $USER:www-data /var/www/owncloud
cd  /var/www/owncloud
sudo usermod -a -G www-data $USER 
cd 
sudo chown -R $USER:www-data /var/www 
sudo chmod -R 775 /var/www

sudo cat > /etc/apache2/sites-available/owncloud.conf << "EOF"
<VirtualHost *:80>
   ServerName owncloud
   ServerAdmin webmaster@localhost
   DocumentRoot /var/www/owncloud/
   <Directory "/var/www/owncloud/">
    AllowOverride All
     Require all granted
      <IfModule mod_dav.c>
  	Dav off
 	</IfModule>
 	SetEnv HOME /var/www/owncloud
 	SetEnv HTTP_HOME /var/www/owncloud
   </Directory>

   ErrorLog ${APACHE_LOG_DIR}/error.log
   CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

sudo echo "127.0.1.1 owncloud" | sudo tee -a /etc/hosts 

sudo a2ensite owncloud.conf

sudo service apache2 restart	


sudo a2enmod headers 
sudo a2enmod env
sudo a2enmod dir
sudo a2enmod mime
sudo a2enmod unique_id

sudo service apache2 restart	

sudo a2enmod ssl
sudo a2ensite default-ssl
sudo service apache2 reload
