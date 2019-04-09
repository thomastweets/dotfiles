#!/bin/zsh -f

echo -e "\e[4mInstalling dotfiles via symlinks\e[0m"
# Overwrite existing files?
overwrite=false

# List of dotfiles to install
dotfiles=(
zshrc
zshenv
tmux.conf
gitconfig
gitignore_global
hyper.js
bcrc
slate
atom/config.cson
atom/keymap.cson
atom/snippets.cson
atom/init.coffee
atom/styles.less
atom/projects.cson
)

for dotfile in $dotfiles; do
	echo -e "Installing \e[31m$dotfile\e[0m"
	if [ ! -e ~/.$dotfile ]; then
		ln -s ~/dotfiles/$dotfile ~/.$dotfile
		echo Done!
	else
		if [ "$overwrite" = true ]; then
			echo file already existing, overwriting!
			rm ~/.$dotfile
			ln -s ~/dotfiles/$dotfile ~/.$dotfile
			echo Done!
		else
			echo file already existing, skipping.
		fi
	fi
done





# # Scripts
# if [ ! -e /usr/local/bin/bv ]
# then
# 	ln -s ~/dotfiles/scripts/bv /usr/local/bin/bv
# fi
#
# if [ ! -e /usr/local/bin/ml ]
# then
# 	ln -s ~/dotfiles/scripts/ml /usr/local/bin/ml
# fi
