#!/bin/sh

echo "Updating zsh plugins:"
for f in ~/.zsh-plugins/*
do
    if [ -d $f ]
    then
        echo "> `basename $f`"
        cd $f && git pull
    fi
done