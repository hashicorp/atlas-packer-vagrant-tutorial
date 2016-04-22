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
mkdir -p /srv/backup
cd /srv/backup
git clone https://github.com/ImpressCMS/impresscms.git impresscms
cd impresscms
git fetch --all
git checkout retro
cd htdocs
composer install --no-interaction
chmod ug=rwx uploads/ cache/ templates_c/ modules/
cp -r /tmp/data/web-config/impresscms/* -t /srv/backup/impresscms

rm -rf /var/www/html
mkdir -p /vagrant
mkdir -p /vagrant/www
mkdir -p /vagrant/www/htdocs
ln -s /vagrant/www/htdocs /var/www/html

cd ../..
chown -R www-data impresscms
chgrp -R www-data impresscms
rar a -m5 -md512m -ow -r -s -t -tk -y -rr -k -ep1 impresscms.rar impresscms/
rm -rf impresscms

(crontab -l ; echo "@reboot sleep 20s && screen -d -m /usr/local/bin/icms-extract-backup.sh") | crontab

echo "Setuping Memcached..."
cd /srv/www
git clone https://github.com/bainternet/Memchaced-Dashboard.git Memchaced-Dashboard

echo "Fixing rights for all folders..."
chown -R www-data /srv/www
chgrp -R www-data /srv/www

chown -R vagrant /vagrant/www
chgrp -R vagrant /vagrant/www
