#!/bin/zsh

for f in ~/.zsh-plugins/*; do
    plugin_name=`basename $f`
    source $f/$plugin_name.plugin.zsh
done