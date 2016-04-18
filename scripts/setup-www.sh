#!/bin/bash

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

echo "Importing sql files..."
for f in /tmp/data/sql/*.sql
do
	filename=$(basename "$f")
	db="${filename%.*}"
	echo "Importing $f file into \`$db\`..."
	mysql -uroot -e "create database \`$db\`; use \`$db\`; source $f;"
done

echo "Setuping ImpressCMS..."
mkdir -p /vagrant/www
chown -R www-data /vagrant/www
chgrp -R www-data /vagrant/www
git clone https://github.com/ImpressCMS/impresscms.git /vagrant/www
cd /vagrant/www
git fetch --all
git checkout retro
cd /vagrant/www/htdocs
chmod ug=rwx uploads/ cache/ templates_c/ modules/
cp -r /tmp/data/web-config/impresscms/* -t /vagrant/www/
cd /vagrant/www
rm -rf /var/www/html
ln -s /vagrant/www/htdocs /var/www/html

echo "Setuping Memcached..."
git clone https://github.com/bainternet/Memchaced-Dashboard.git Memchaced-Dashboard

echo "Fixing rights for all folders..."
chown -R www-data /srv/www
chgrp -R www-data /srv/www
chown -R vagrant /vagrant/www
chgrp -R vagrant /vagrant/www