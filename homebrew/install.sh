#!/bin/sh

if test ! $(which brew)
then
    echo "  Installing Homebrew for you."

    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    
fi  

brew_pkgs=`brew ls --versions`

brew_install() {
    app_name=`echo $@ | awk '{print $NF}'`
    if ! grep -qw "$app_name" <<< "$brew_pkgs"; then
        brew install "$@"
    fi
}

brew_install git
brew_install pyenv
brew_install pyenv-virtualenv
brew_install fnm
brew_install curl
brew_install httpie
brew_install coreutils
brew_install jenv
brew_install wrk
brew_install yarn
brew_install jq
brew_install ipython
brew_install cmake
brew_install openjdk@11
brew_install openjdk@17
brew_install aria2
brew_install colordiff
brew_install coreutils
brew_install colima
brew_install docker
brew_install docker-compose

brew tap mongodb/brew
brew_install mongodb-community

brew tap homebrew/cask-fonts
brew_install font-jetbrains-mono-nerd-font

brew_install --cask visual-studio-code

unset brew_install
unset brew_pkgs
