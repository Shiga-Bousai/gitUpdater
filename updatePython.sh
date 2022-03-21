#!/bin/bash
cd /mnt/sda1/$1
git fetch origin
git reset --hard origin/main
python3 -m pip install -r requirements.txt
python3 $2