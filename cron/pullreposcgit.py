#!/usr/bin/python3
import os

os.system('cd /srv/git/')
dir_list = os.listdir('/srv/git')
for d in dir_list:
    if os.system(f'cd {d} && ls .git'):
        os.system(f'cd {d} && git pull')
