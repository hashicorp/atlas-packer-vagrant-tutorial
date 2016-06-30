#!/bin/bash

echo "Saving vagrant box creation time..."
date > /etc/vagrant_box_build_time

echo "Installing vagrant keys..."
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

echo "Configuring sudoers..."
mv /etc/sudoers /etc/sudoers.old
mv /tmp/data/etc/sudoers /etc/
chmod 0440 /etc/sudoers
chown root /etc/sudoers
chgrp root /etc/sudoers

echo "Customize the message of the day..."
echo 'ImpressCMS Development Environment' > /etc/motd

echo "Setuping vagrant folder..."
mkdir -p /vagrant
chown vagrant /vagrant
chgrp vagrant /vagrant

echo 'Fixing IP binding...'
echo "auto eth1" >> /etc/network/interfaces.d/eth1
echo "iface eth1 inet manual" >> /etc/network/interfaces.d/eth1