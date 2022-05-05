#!/bin/sh

metadataJson="$DOTFILES/zsh/plugins.json"

cd $HOME/.zsh-plugins

plugins=`cat $metadataJson | jq -r 'keys | join(" ")'`
for plugin in $plugins; do
    repoUrl=`cat $metadataJson | jq -r ".\"$plugin\".repoUrl"`
    
    if [[ ! -f "$plugin/.git/config" ]]; then
        echo "  Installing ZSH plugin '$plugin' for you."
        git clone $repoUrl $plugin
    fi
done