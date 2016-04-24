#!/bin/bash
#
# Setup the the box. This runs as root

export DEBIAN_FRONTEND=noninteractive

echo "Installing services..."
mv /tmp/data/etc/systemd/system/* /etc/systemd/system/
systemctl enable icms.service

echo "Updating and upgrading all packages..."
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade

echo "Installing some usefull tools for development..."
apt-get -y install keychain coreutils mc rar unrar zip unzip nano curl lynx git subversion links

echo "Installing MySQL server, client and some tools..."
apt-get -q -y install mysql-server mysql-client mysqltuner memcached

echo "Installing web default dependencies..."
apt-get -q -y install apache2 php php-cli php-gd mysql-client php-mysqlnd php-xdebug php-memcached php-mcrypt php-curl php-json

echo "Installing some extra PHP libs..."
apt-get -q -y install php-codesniffer php-imagick php-pear php-memcache php-sqlite php-mongo

echo "Installing E-mail support..."
apt-get -q -y install sendmail

echo "Install PHPUnit..."
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit
phpunit --version

echo "Installing BlackFire.IO agent..."
wget -O - https://packagecloud.io/gpg.key | sudo apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | sudo tee /etc/apt/sources.list.d/blackfire.list
apt-get -q -y update
apt-get -q -y install blackfire-agent

echo "Installing globaly composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "Copying custom shell scripts..."
mv /tmp/data/bin/icms-extract-backup.sh /usr/local/bin/icms-extract-backup.sh
chown vagrant:vagrant /usr/local/bin/icms-extract-backup.sh
chmod +x /usr/local/bin/icms-extract-backup.sh

echo "Installing phpMyAdmin..."
apt-get -q -y install phpmyadmin
phpenmod mcrypt
rm -rf /etc/phpmyadmin/config.inc.php
cp /tmp/data/web-config/phpmyadmin/config.inc.php /etc/phpmyadmin/config.inc.php
ln -s /etc/phpmyadmin/apache.conf /etc/apache2/mods-enabled/phpmyadmin.conf
service apache2 restart