#!/bin/bash
cd /mnt/sda1/$1
echo "-----Git fetch-----"
git fetch origin
git reset --hard origin/master
echo "-----pip3 install-----"
pip3 install -r requirements.txt
if [ $2 != "" ]; then
    echo "-----code test-----"
    python3 $2 gitTest
    if [ $? -gt 0 ]; then
        echo "-----ERROR-----"
        git stash
        git checkout @^
        git stash pop
    fi
fi
echo "-----Finished-----"