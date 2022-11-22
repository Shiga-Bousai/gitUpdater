#!/bin/bash
cd $1
echo "-----Git fetch-----"
git fetch origin 2>&1
git reset --hard origin/master 2>&1
echo "-----pip3 install-----"
pip3 install -r requirements.txt
if [ $2 != "" ]; then
    echo "-----code test-----"
    python3 $2 gitTest 2>&1
    if [ $? -gt 0 ]; then
        echo "-----ERROR-----"
        git stash 2>&1
        git checkout @^ 2>&1
        git stash pop 2>&1
    else
        echo "-----Code is OK, No Problem-----"
    fi
fi
echo "-----Finished-----"
