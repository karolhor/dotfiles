#!/usr/bin/env zsh

# GNU ls aliases
#
alias ls='/opt/homebrew/bin/gls --color=auto'
alias ll='ls -lFh'     			# long (-l), types classify (-F),human readable (-h)
alias l='ll'
alias la='ls -lah'

# diff
alias diff='colordiff'

# change dir
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../..'

#
# Pipe Aliases
#
alias grep='egrep --color=auto '
alias egrep='egrep --color=auto '
