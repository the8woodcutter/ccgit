#!/usr/bin/bash
(crontab -l ; echo  "0 4 * * * pullrepos.sh")| crontab -
