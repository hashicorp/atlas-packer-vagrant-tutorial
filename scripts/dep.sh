#!/bin/bash
#
# Setup the the box. This runs as root

export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade

# You can install anything you need here.
apt-get -y install keychain coreutils mc rar unrar zip unzip nano curl lynx git subversion links

# DB
apt-get -q -y install mysql-server mysql-client mysqltuner memcached

# Web dependencies
apt-get -q -y install apache2 php5 php5-cli php5-gd mysql-client php5-mysqlnd php5-xdebug php5-memcache php5-memcached php5-mcrypt php5-imagick php-codesniffer php5-curl php-pear

# E-mail
apt-get -q -y install sendmail

# Copy websites configs
mv /tmp/data/websites/* /etc/apache2/sites-available/
cd /etc/apache2/sites-available/
a2ensite *
service apache2 restart

# Web pages area
mkdir -p /srv/www
cd /srv/www
chown -R www-data /srv/www
chgrp -R www-data /srv/www
usermod -a -G www-data vagrant

# Installing globaly composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Importing sql files
for f in /tmp/data/sql/*.sql
do
	filename=$(basename "$f")
	db="${filename%.*}"
	echo "Importing $f file into \`$db\`..."
	mysql -uroot -e "create database \`$db\`; use \`$db\`; source $f;"
done

# Setuping ImpressCMS
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

# Setuping PHPMyAdmin
git clone https://github.com/phpmyadmin/phpmyadmin phpmyadmin
git checkout STABLE
cp -r /tmp/data/web-config/phpmyadmin/* -t /srv/www/phpmyadmin/

# Setuping Memcached
git clone https://github.com/bainternet/Memchaced-Dashboard.git Memchaced-Dashboard

# Fixing rights for all folders
cd /srv/www
chown -R www-data *
chgrp -R www-data *

