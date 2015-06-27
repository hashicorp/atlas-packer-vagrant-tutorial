#!/bin/bash

# Vagrant specific
date > /etc/vagrant_box_build_time

# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh

# Customize the message of the day
echo 'ImpressCMS Development Environment' > /etc/motd

# Conf/etc/sudoers
touch /etc/sudoers
cat >/etc/sudoers <<EOL
#                                                                                   
# This file MUST be edited with the 'visudo' command as root.                       
#                                                                                   
# Please consider adding local content in /etc/sudoers.d/ instead of                
# directly modifying this file.                                                     
#                                                                                   
# See the man page for details on how to write a sudoers file.                      
#                                                                                   
Defaults        env_reset                                                           
Defaults        mail_badpass                                                        
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin
                                                                                    
# Host alias specification                                                          
                                                                                    
# User alias specification                                                          
                                                                                    
# Cmnd alias specification                                                          
                                                                                    
# User privilege specification                                                      
root    ALL=(ALL:ALL) ALL                                                           
                                                                                    
# Members of the admin group may gain root privileges                               
%admin ALL=(ALL) ALL                                                                
                                                                                    
# Allow members of group sudo to execute any command                                
%sudo   ALL=(ALL:ALL) ALL                                                           
                                                                                    
# See sudoers(5) for more information on "#include" directives:                     
                                                                                    
#includedir /etc/sudoers.d                                                          
vagrant ALL=(ALL) NOPASSWD: ALL
EOL
chmod 100440 /etc/sudoers
chown root /etc/sudoers
chgrp root /etc/sudoers