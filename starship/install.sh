#!/bin/sh

if test ! $(which starship)
then
    echo "  Installing Starship for you."

    curl -sS https://starship.rs/install.sh | bash --posix -s -- --force
fi  

