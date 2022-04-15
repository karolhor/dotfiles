#!/bin/sh

cd $HOME/.zsh-plugins

plugins=(
    "z-shell/fast-syntax-highlighting" \
    "zsh-users/zsh-autosuggestions"
)

echo "  Installing ZSH plugins for you."
for plugin in ${plugins[@]}; do
    echo "> $plugin"
    plugin_name=`basename $plugin`

    if [[ ! -f "$plugin_name/.git/config" ]]; then
        git clone https://github.com/$plugin $plugin_name
    fi
done