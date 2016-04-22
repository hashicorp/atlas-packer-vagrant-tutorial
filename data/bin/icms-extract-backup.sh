#!/bin/bash

if [ ! -d /vagrant/www ]; then
  echo "Waiting..."
  sleep 40s
  echo "Doing job..."
  touch /tmp/WWW_EXTRACTING 
  mkdir -p /vagrant/www 
  cd /vagrant/www 
  unrar x -y -o- /srv/backup/impresscms.rar
  cd /vagrant/www/htdocs
  composer update --no-interaction
  rm -rf /tmp/WWW_EXTRACTING
  echo "Done."
fi
