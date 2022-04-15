#!/bin/sh

cd $HOME/.zsh-plugins

plugins=(
    "z-shell/fast-syntax-highlighting" \
    "zsh-users/zsh-autosuggestions"
)

for plugin in ${plugins[@]}; do
    plugin_name=`basename $plugin`

    if [[ ! -f "$plugin_name/.git/config" ]]; then
        echo "  Installing ZSH plugin '$plugin' for you."
        git clone https://github.com/$plugin $plugin_name
    fi
done