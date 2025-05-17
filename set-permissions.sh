#!/bin/bash
DIR=/var/www/html/cgit
USER1=www-data
USER2=1000
sudo chown -R $USER1:$USER2 $DIR
sudo find $DIR -type f -exec chmod 664 {} \;
sudo find $DIR -type d -exec chmod 775 {} \;
cd $DIR && chmod 770 cgit.cgi
sudo chmod +x set-permissions.sh
echo ""
echo "Success!"
echo ""
