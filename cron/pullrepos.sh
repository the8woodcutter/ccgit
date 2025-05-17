#!/usr/bin/bash
cd /srv/git
for dir in /srv/git/*; do (cd "$dir" && git pull); done
