#!/bin/bash

#apt-get install linux-tools-3.19.0-21-generic
#apt-get install hv-kvp-daemon-init
#cp /usr/lib/linux-tools/3.19.0-21/hv_* /usr/sbin/

sudo echo "hv_vmbus" >> /etc/initramfs-tools/modules
sudo echo "hv_storvsc" >> /etc/initramfs-tools/modules
sudo echo "hv_blkvsc" >> /etc/initramfs-tools/modules
sudo echo "hv_netvsc" >> /etc/initramfs-tools/modules

sudo update-initramfs –u -k all

sudo apt-get -y install linux-cloud-tools-common linux-cloud-tools-virtual
sudo cp /usr/lib/linux-tools/`uname -r`/hv_* /usr/sbin/

sudo /opt/VBoxGuestAdditions-*/uninstall.sh
rm -rf /usr/lib/VBoxGuestAdditions

echo "Done."
echo "Now run build.bat again to finish everything"