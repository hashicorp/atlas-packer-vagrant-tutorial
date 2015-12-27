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

echo "Coping websites configs..."
mv /tmp/data/websites/* /etc/apache2/sites-available/
cd /etc/apache2/sites-available/
a2ensite *
service apache2 restart

echo "Configuring web pages area..."
mkdir -p /srv/www
cd /srv/www
chown -R www-data /srv/www
chgrp -R www-data /srv/www
usermod -a -G www-data vagrant

echo "Installing globaly composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "Importing sql files..."
for f in /tmp/data/sql/*.sql
do
	filename=$(basename "$f")
	db="${filename%.*}"
	echo "Importing $f file into \`$db\`..."
	mysql -uroot -e "create database \`$db\`; use \`$db\`; source $f;"
done

echo "Setuping ImpressCMS..."
git clone https://github.com/ImpressCMS/impresscms.git impresscms
git config core.fileMode false
git fetch --all
git checkout retro
cd impresscms/htdocs
chmod ug=rwx uploads/ cache/ templates_c/ modules/
cp -r /tmp/data/web-config/impresscms/* -t /srv/www/impresscms/
cd /srv/www/
rm -rf /var/www/html
ln -s /srv/www/impresscms/htdocs /var/www/html

echo "Setuping PHPMyAdmin..."
git clone https://github.com/phpmyadmin/phpmyadmin phpmyadmin
git checkout STABLE
cp -r /tmp/data/web-config/phpmyadmin/* -t /srv/www/phpmyadmin/

echo "Setuping Memcached..."
git clone https://github.com/bainternet/Memchaced-Dashboard.git Memchaced-Dashboard

echo "Fixing rights for all folders..."
cd /srv/www
chown -R www-data *
chgrp -R www-data *

echo "Install PHPUnit..."
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit
phpunit --version

echo "Installing BlackFire.IO agent..."
wget -O - https://packagecloud.io/gpg.key | sudo apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | sudo tee /etc/apt/sources.list.d/blackfire.lis
sudo apt-get update
sudo apt-get install blackfire-agent
