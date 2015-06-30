#!/bin/bash

#apt-get install linux-tools-3.19.0-21-generic
#apt-get install hv-kvp-daemon-init
#cp /usr/lib/linux-tools/3.19.0-21/hv_* /usr/sbin/

echo "hv_vmbus" >> /etc/initramfs-tools/modules
echo "hv_storvsc" >> /etc/initramfs-tools/modules
echo "hv_blkvsc" >> /etc/initramfs-tools/modules
echo "hv_netvsc" >> /etc/initramfs-tools/modules

update-initramfs –u -k all

apt-get -y install linux-cloud-tools-common linux-cloud-tools-virtual
cp /usr/lib/linux-tools/`uname -r`/hv_* /usr/sbin/

find /etc -name "*vboxadd*" -exec rm {} \;
find /etc -name "*vboxvfs*" -exec rm {} \;
rm -r /usr/src/vboxadd-*
rm -r /usr/src/vboxvfs-*
rm /usr/sbin/vboxadd-timesync
rm /lib/modules/`uname -r`/misc/vboxadd.ko
rm /lib/modules/`uname -r`/misc/vboxvfs.ko