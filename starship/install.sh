#!/bin/sh

if test ! $(which starship)
then
    echo "  Installing Starship for you."

    curl -sS https://starship.rs/install.sh | sh
fi  

