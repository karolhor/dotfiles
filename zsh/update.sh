#!/bin/sh

echo "Updating zsh plugins:"
for f in ~/.zsh-plugins/*
do
    echo "> `basename $f`"
    cd $f && git pull
done