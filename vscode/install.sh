#!/bin/sh
if command -v code >/dev/null; then
    echo "  Installing VScode extensions for you."
	
    while read -r module; do
		code --install-extension "$module" > /dev/null || true
	done <"$DOTFILES/vscode/extensions.txt"
fi