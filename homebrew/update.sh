#!/bin/sh
CURRENT_DIR=`dirname $(greadlink -f $0)`

$CURRENT_DIR/install.sh
brew update
brew upgrade
brew cleanup
brew autoremove