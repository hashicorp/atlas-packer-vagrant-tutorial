mkdir test
cd test
vagrant destroy -f
vagrant box remove ImpressCMS/DevBox-Ubuntu --all -f
vagrant init ImpressCMS/DevBox-Ubuntu
vagrant up