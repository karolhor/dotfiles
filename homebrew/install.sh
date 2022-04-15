#!/bin/sh

if test ! $(which brew)
then
    echo "  Installing Homebrew for you."

    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    
fi  

brew install git
brew install pyenv
brew install pyenv-virtualenv
brew install fnm
brew install curl
brew install httpie
brew install coreutils
brew install jenv
brew install wrk
brew install yarn
brew install jq
brew install ipython
brew install cmake
brew install openjdk@11
brew install openjdk@17
brew install aria2
brew install colordiff

brew tap mongodb/brew
brew install mongodb-community

brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font