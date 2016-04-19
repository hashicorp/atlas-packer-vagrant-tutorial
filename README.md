[![License](https://img.shields.io/github/license/ImpressCMS/packer-impresscms-devbox.svg?maxAge=2592000)](License.txt) ![GitHub release](https://img.shields.io/github/release/ImpressCMS/packer-impresscms-devbox.svg?maxAge=2592000)
# What is this?

This is a [Atlas Packer](https://www.packer.io) template based on the [Atlas Packer Vagrant Tutorial](https://github.com/hashicorp/atlas-packer-vagrant-tutorial).

# What is template creates?

A Vagrant base box for [ImpressCMS](http://impress.org) development.

# What is inside?

This webbox is based on [Ubuntu](http://ubuntu.com/) i386 Server

* [Apache](http://httpd.apache.org)
* [MySQL](https://www.mysql.com)<blockquote>**user:** root <br /> **pass:**</blockquote>
* [Memcached](http://memcached.org)
* [phpMyAmin](http://www.phpmyadmin.net/)<blockquote>Latest stable version from GIT<br />**url**: http://*BOX_IP*/phpmyadmin</blockquote>
* [Memchaced-Dashboard](https://github.com/bainternet/Memchaced-Dashboard)<blockquote>Latest master version from GIT<br />**user:** admin<br />**pass:** admin<br />**url**: http://*BOX_IP*/md</blockquote>
* [ImpressCMS](http://impress.org)<blockquote>Latest retro version from GIT<br />**user:** admin<br />**pass:** admin<br />**url**: http://*BOX_IP*/</blockquote>

# How to login on created box?

**User:** vagrant<br />**Pass:** vagrant

# How to use this template?

 1. Checkout this repo
 2. CD to repo folder
 3. Make sure [Atlas Packer](https://www.packer.io) is installed on your system
 4. Make sure You have *ATLAS_TOKEN* in your environment variables list. You can get this token from https://atlas.hashicorp.com/ (registration needed)
 5. Run `packer push template-ubuntu.json`
 6. Wait until all script finishes. You can see build progress on https://atlas.hashicorp.com/builds page.

# License

This template use *Mozilla Public License, version 2.0*. See [LICENSE](https://github.com/MekDrop/impresscms-devbox-packer/blob/master/LICENSE) file for more info.
