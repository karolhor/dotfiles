#!/usr/bin/env zsh

#-----------------------------------------------------
# Add colors to ls command
if [ -f "/usr/local/bin/gdircolors"  ] || [ -f "/usr/bin/gdircolors"  ]; then
	eval $( gdircolors -b ${DOTFILES}/system/dircolors-custom )
fi
