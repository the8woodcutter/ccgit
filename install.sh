#!/usr/bin/bash
##########################################################################################
##### !!!!!!!!!!!!! WARNING WARNING WARNING ##### !!!!!!!!!!!!!!!!!!!!!!!!!!! !!!!!!!!!!!!
### THIS REPO *MUST* BE PUT IN `/var/www/html/` as u clone it!  If you didnt do: #########
#### cd /var/www/html && git clone ccgit (HERE) : then start over and do it that way! ####
##########################################################################################

### As many dependencies as I can find:
sudo apt install nginx-full fcgiwrap luajit2 lua5.2 liblua5.2-dev libzip-dev libssl-dev openssl gcc g++ \
	make libtool binutils python3 python3-markdown python3-venv git lua-luaossl-dev lua-zip-dev
sudo systemctl enable --now {fcgiwrap,nginx}

### Clone v1.2.3 cgit:
cd /var/www/html/ccgit
git clone https://git.zx2c4.com/cgit
cd /var/www/html/ccgit/cgit
git submodule init
git submodule update
make get-git

### Important:
cp /var/www/html/ccgit/IMPORTANTFILE /var/www/html/ccgit/cgit/Makefile

### Lua5.1 or Lua5.2 are the accepted versions, or luajit
cd /var/www/html/ccgit/cgit && make LUA_PKGCONFIG=lua5.2
mv /var/www/html/ccgit/cgit/cgit.cgi /var/www/html/ccgit
cd /var/www/html/ccgit && rm -rf /var/www/html/ccgit/cgit

cd /var/www/html/ccgit/git
git clone git@github.com:the8woodcutter/pyblog
git clone git@github.com:the8woodcutter/fknalarm
git clone git@github.com:the8woodcutter/mrbot
git clone git@github.com:the8woodcutter/xmpputils.git
git clone git@github.com:the8woodcutter/pubsubtools
git clone git@github.com:the8woodcutter/the8woodcutter
git clone git@github.com:the8woodcutter/mycgit
git clone https://github.com/PurpleI2P/i2pd-tools.git
git clone https://gt.kalli.st/czar/mod_deepweb.git
git clone https://github.com/jerry-harm/mod_i2p
git clone git@github.com:the8woodcutter/conversejs-i2p
git clone https://git.xmpp-it.net/sch/Blasta.git
git clone https://git.xmpp-it.net/sch/Slixfeed.git
git clone https://git.zx2c4.com/cgit/
git clone git@github.com:the8woodcutter/musicplace-stable

cp /var/www/html/ccgit/etc/cgitrepos /var/www/html/ccgit/etc/cgitrc /var/www/html/ccgit
sudo cp /var/www/html/ccgit/etc/nginx/sites-avaialable/cgit.conf /etc/nginx/sites-avaialable
sudo ln -s /etc/nginx/sites-avaialable/cgit.conf /etc/nginx/sites-enabled
sudo systemctl restart fcgiwrap
sudo systemctl restart nginx
sudo bash /var/www/html/ccgit/set-permissions.sh