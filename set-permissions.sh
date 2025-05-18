#!/usr/bin/bash
DIR=/var/www/html/ccgit
USER1=1000
USER2=www-data
sudo chown -R $USER1:$USER2 $DIR
sudo find $DIR -type f -exec chmod 660 {} \;
sudo find $DIR -type d -exec chmod 770 {} \;
cd $DIR && sudo chmod 750 cgit.cgi set-permissions.sh
echo "" && echo "Success!" && echo ""
