#!/bin/bash

echo "hv_vmbus" | sudo tee --append /etc/initramfs-tools/modules 
echo "hv_storvsc" | sudo tee --append /etc/initramfs-tools/modules 
echo "hv_blkvsc" | sudo tee --append /etc/initramfs-tools/modules 
echo "hv_netvsc" | sudo tee --append /etc/initramfs-tools/modules 

sudo `echo "update-initramfs -u"`

sudo apt-get -y install linux-cloud-tools-common linux-cloud-tools-virtual
sudo cp /usr/lib/linux-tools/`uname -r`/hv_* /usr/sbin/

sudo /opt/VBoxGuestAdditions-*/uninstall.sh
rm -rf /usr/lib/VBoxGuestAdditions 

touch /tmp/1.sh
echo 'rm -rf /home/vagrant/.ssh' >> /tmp/1.sh
echo "mkdir -pm 700 /home/vagrant/.ssh" >> /tmp/1.sh
echo -n "wget --no-check-certificate "  >> /tmp/1.sh
echo -n "'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'"  >> /tmp/1.sh
echo " -O /home/vagrant/.ssh/authorized_keys" >> /tmp/1.sh
echo "chmod 0600 /home/vagrant/.ssh/authorized_keys" >> /tmp/1.sh
echo "chown -R vagrant /home/vagrant/.ssh" >> /tmp/1.sh
chmod 777 /tmp/1.sh
/tmp/1.sh
rm -rf /tmp/1.sh

echo "Done."
echo "Now run build.bat again to finish everything"

#history -c && history -w