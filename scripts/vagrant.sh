#!/bin/bash

# Vagrant specific
date > /etc/vagrant_box_build_time

# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

# Configure sudoers
echo "Configure sudoers..."
mv /etc/sudoers /etc/sudoers.old
mv /tmp/data/etc/sudoers /etc/
chmod 0440 /etc/sudoers
chown root /etc/sudoers
chgrp root /etc/sudoers

# Customize the message of the day
echo "Customize the message of the day..."
echo 'ImpressCMS Development Environment' > /etc/motd