#!/usr/bin/bash

dir=/var/www/html/cgit
sudo chown -R $USER:$USER $dir
cd $dir

# Python Projects
git clone git@github.com:the8woodcutter/pyblog

# Bots for XMPP and More To Come
git clone git@github.com:the8woodcutter/mrbot
git clone git@github.com:the8woodcutter/xmpputils.git
git clone git@github.com:the8woodcutter/pubsubtools

# PubSub and XMPP
git clone https://git.xmpp-it.net/sch/Blasta.git
git clone https://git.xmpp-it.net/sch/Slixfeed.git

# HTTP Projects
git clone git@github.com:the8woodcutter/the8woodcutter
git clone git@github.com:the8woodcutter/mycgit

# Darknet, XMPP and Such
git clone https://github.com/PurpleI2P/i2pd-tools.git
git clone https://gt.kalli.st/czar/mod_deepweb.git
git clone https://github.com/jerry-harm/mod_i2p
git clone git@github.com:the8woodcutter/conversejs-i2p

# Just Mirrors and Coveted Goods
git clone https://git.zx2c4.com/cgit/
