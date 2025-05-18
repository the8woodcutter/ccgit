#!/usr/bin/bash
##########################################################################################
##### !!!!!!!!!!!!! WARNING WARNING WARNING ##### !!!!!!!!!!!!!!!!!!!!!!!!!!! !!!!!!!!!!!!
### THIS REPO *MUST* BE PUT IN `/var/www/html/` as u clone it!  If you didnt do: #########
#### cd /var/www/html && git clone ccgit (HERE) : then start over and do it that way! ####
##########################################################################################

### As many dependencies as I can find:
sudo apt install nginx-full fcgiwrap luajit2 lua5.2 liblua5.2-dev libzip-dev libssl-dev openssl gcc g++ \
	make libtool binutils python3 python3-markdown python3-venv git lua-luaossl-dev lua-zip-dev

### Let's remove old stuff if any:
cd /var/www/html/ccgit && rm cgit.cgi

### Clone v1.2.3 cgit:
cd /var/www/html/ccgit
git clone https://git.zx2c4.com/cgit
cd /var/www/html/ccgit/cgit
git submodule init
git submodule update
make get-git

### Important:
cp /var/www/html/ccgit/Makefile /var/www/html/ccgit/cgit

### Lua5.1 or Lua5.2 are the accepted versions, or luajit
cd /var/www/html/ccgit/cgit && make LUA_PKGCONFIG=lua5.2
cd /var/www/html/ccgit && rm -rf /var/www/html/ccgit/cgit

### Congrats, cgit.cgi executable is ready and now to put the things where they need to go
/usr/lib/python3 /var/www/html/ccgit/install.2.py