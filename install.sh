#!/bin/bash

if [ -z $1 ] ; then
    TARGET="/usr/local/bin/git-multi-push"
    echo "Installing to defualt location: $TARGET"
else
    TARGET=$1
    echo "Installing to custom location: $TARGET"
fi

echo "Detecting Python 3..."
PY3=$(which python3)
if [ -z $PY3 ] ; then
    echo "Failed"
    exit -1
fi

echo "Copying files..."
cp git-multi-push.py $TARGET
chmod +x $TARGET
echo "Done"

echo "Installation finished"
