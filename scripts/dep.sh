#!/bin/bash
#
# Setup the the box. This runs as root

echo "Updating and upgrading all packages..."
export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade

echo "Installing some usefull tools for development..."
apt-get -y install keychain coreutils mc rar unrar zip unzip nano curl lynx git subversion links

echo "Installing MySQL server, client and some tools..."
apt-get -q -y install mysql-server mysql-client mysqltuner memcached

echo "Installing web default dependencies..."
apt-get -q -y install apache2 php5 php5-cli php5-gd mysql-client php5-mysqlnd php5-xdebug php5-memcached php5-mcrypt php5-curl php5-json

echo "Installing some extra PHP libs..."
apt-get -q -y install php-codesniffer php5-imagick php-pear php5-memcache php5-sqlite php5-mongo

echo "Installing E-mail support..."
apt-get -q -y install sendmail

echo "Install PHPUnit..."
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit
phpunit --version

echo "Installing BlackFire.IO agent..."
wget -O - https://packagecloud.io/gpg.key | sudo apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | sudo tee /etc/apt/sources.list.d/blackfire.list
apt-get -q -y update
apt-get -q -y install blackfire-agent

echo "Installing globaly composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "Installing phpMyAdmin..."
apt-get -q -y install phpmyadmin
php5enmod mcrypt
rm -rf /etc/phpmyadmin/config.inc.php
cp /tmp/data/web-config/phpmyadmin/config.inc.php /etc/phpmyadmin/config.inc.php
service apache2 restart
