#!/bin/sh

if test ! $(which brew)
then
    echo "  Installing Homebrew for you."

    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    
fi  

