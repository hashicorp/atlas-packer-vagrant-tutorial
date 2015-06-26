#!/bin/bash

# Bail if we are not running inside VMWare.
if [[ `facter virtual` != "hyperv" ]]; then
    exit 0
fi

#apt-get install linux-tools-3.19.0-21-generic
#apt-get install hv-kvp-daemon-init
#cp /usr/lib/linux-tools/3.19.0-21/hv_* /usr/sbin/

echo "hv_vmbus" >> /etc/initramfs-tools/modules
echo "hv_storvsc" >> /etc/initramfs-tools/modules
echo "hv_blkvsc" >> /etc/initramfs-tools/modules
echo "hv_netvsc" >> /etc/initramfs-tools/modules

update-initramfs –u

