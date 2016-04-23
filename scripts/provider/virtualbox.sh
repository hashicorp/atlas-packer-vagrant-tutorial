#!/bin/bash

# Bail if we are not running inside VirtualBox.
echo "Checking if VirtualBox..."
if [[ `virt-what | grep virtualbox` != "virtualbox" ]]; then
	echo "It seems no ;("
    exit 0
fi

echo "It seems yes ^_^"

echo "Installing VirtualBox quest additions..."
mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso
