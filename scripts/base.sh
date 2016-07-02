#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

#echo "Fixing apt-get list"
#echo "deb mirror://mirrors.ubuntu.com/mirrors.txt wily main restricted universe multiverse" > /etc/apt/sources.list
#echo "deb mirror://mirrors.ubuntu.com/mirrors.txt wily-updates main restricted universe multiverse" >> /etc/apt/sources.list
#echo "deb mirror://mirrors.ubuntu.com/mirrors.txt wily-backports main restricted universe multiverse" >> /etc/apt/sources.list
#echo "deb mirror://mirrors.ubuntu.com/mirrors.txt wily-security main restricted universe multiverse" >> /etc/apt/sources.list

echo "Updating the box and installing some usefull tools..."
apt-get -y update
apt-get -y install virt-what facter linux-headers-$(uname -r) build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev curl unzip

echo "Tweaking sshd to prevent DNS resolution (speed up logins)"
echo 'UseDNS no' >> /etc/ssh/sshd_config

echo "Configuring GRUB..."
cat > /etc/default/grub <<EOF
# If you change this file, run 'update-grub' afterwards to update
# /boot/grub/grub.cfg.

GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"

EOF

update-grub

echo "Configuring network..."
cat >> /etc/network/interfaces <<EOF
auto eth0
iface eth0 inet dhcp
auto eth1
iface eth1 inet manual
EOF