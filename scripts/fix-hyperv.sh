#!/bin/bash

#apt-get install linux-tools-3.19.0-21-generic
#apt-get install hv-kvp-daemon-init
#cp /usr/lib/linux-tools/3.19.0-21/hv_* /usr/sbin/

echo "hv_vmbus" | sudo tee --append /etc/initramfs-tools/modules 
echo "hv_storvsc" | sudo tee --append /etc/initramfs-tools/modules 
echo "hv_blkvsc" | sudo tee --append /etc/initramfs-tools/modules 
echo "hv_netvsc" | sudo tee --append /etc/initramfs-tools/modules 

sudo `echo "update-initramfs -u"` 

sudo apt-get -y install linux-cloud-tools-common linux-cloud-tools-virtual 
sudo cp /usr/lib/linux-tools/`uname -r`/hv_* /usr/sbin/ 

sudo /opt/VBoxGuestAdditions-*/uninstall.sh 
rm -rf /usr/lib/VBoxGuestAdditions 

rm -rf /home/vagrant/.ssh
mkdir -pm 700 /home/vagrant/.ssh
lynx --dump https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub > /home/vagrant/.ssh/authorized_keys 
chmod 0600 /home/vagrant/.ssh/authorized_keys 
chown -R vagrant /home/vagrant/.ssh 

echo "Done."
echo "Now run build.bat again to finish everything"

#history -c && history -w 

#exit