#!/bin/sh

if test ! $(which poetry)
then
    echo "  Installing Poetry (Python) for you."

    pipx ensurepath
    sudo pipx ensurepath --global
    pipx install poetry    

    mkdir -p $HOME/.zfunc
    poetry completions zsh > ~/.zfunc/_poetry
fi  
