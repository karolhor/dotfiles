#!/bin/zsh

metadataJson=`realpath zsh/plugins.json`

for f in ~/.zsh-plugins/*; do
    if [ -d $f ]
    then
        plugin_name=`basename $f`
        cmd=`cat $metadataJson | jq -r ".\"$plugin_name\".cmd"`
        
        source $f/$cmd
    fi    
done