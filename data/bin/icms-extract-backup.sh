#!/bin/bash

if [ "$1" == "stop" ]; then
	pgrep $0 | while read -r pid ; do
	    kill $pid
	done
	exit 0;
fi;

if [ "$1" == "bg" ]; then
	nohup $0 bg 0<&- &> /var/log/icms.log &
	exit 0;
fi;

is_running=0
while true; do

	sleep 20s

	if [ ! -d /vagrant/www ]; then
	  if [ "$is_running" == "0" ]; then
		  is_running=1
		  echo "Doing job..."
		  touch /vagrant/WWW_EXTRACTING 
		  mkdir -p /vagrant/.vagrant/www
		  cd /vagrant/.vagrant/www 
		  unrar x -y -o- /srv/backup/impresscms.rar
		  cd /vagrant/.vagrant/www/htdocs
		  composer update --no-interaction
 		  rm -rf /vagrant/www
		  mv /vagrant/.vagrant/www /vagrant/www
		  rm -rf /vagrant/WWW_EXTRACTING
		  echo "Done."
		  is_running=0
	  fi
	fi

done