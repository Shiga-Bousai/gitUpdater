#!/bin/bash
cd /mnt/sda1/$1
git fetch origin
git reset --hard origin/master
#pip3 install -r requirements.txt
python3 $2 gitTest
if [ $? -gt 0 ]; then
    git stash
    git checkout @^
    git stash pop
fi