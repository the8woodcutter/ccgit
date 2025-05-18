#!/usr/bin/python3
import os

### This copies the nginx vhost config, ready for http cloning it is, into /etc/nginx/sites-available
### YOU MUST LINK THAT VHOST CONFIG TO SITES-ENABLED URSELF!
os.system(f"sudo cp -r /var/www/html/ccgit/etc/* /etc/")

rc_txt = open('/var/www/html/ccgit/etc/cgitrepos','r')
rc_lines = rc_txt.readlines()
rc_txt.close()

for line in rc_lines:
	if line.startswith('###git clone '):
		line = line[13:]
		os.system(f"cd /var/www/html/ccgit/git && git clone {line}")

### Congrats!  You have cloned all the repositories and the cgit config file and the additional repositories config file are ...
### ...where they need to be!
os.system('sudo ln -s /etc/nginx/sites-avaialable/cgit.conf /etc/nginx/sites-enabled && sudo systemctl restart {fcgiwrap,nginx}')
os.system('sudo /var/www/html/ccgit/set-permissions.sh')