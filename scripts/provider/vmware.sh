#!/bin/bash

# Bail if we are not running inside VMWare.
echo "Checking if VMWare..."
if [[ `facter virtual` != "vmware" ]]; then
	echo "It seems no ;("
    exit 0
fi
	
echo "It seems yes ^_^"

echo "Installing the VMWare Tools from a linux ISO..."

#wget http://192.168.0.185/linux.iso -P /tmp
mkdir -p /mnt/vmware
mount -o loop /home/vagrant/linux.iso /mnt/vmware

cd /tmp
tar xzf /mnt/vmware/VMwareTools-*.tar.gz

umount /mnt/vmware
rm -fr /home/vagrant/linux.iso

/tmp/vmware-tools-distrib/vmware-install.pl -d
rm -fr /tmp/vmware-tools-distrib
