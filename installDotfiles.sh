#!/bin/zsh -f
if [ ! -e ~/.zshrc ]
then
	ln -s ~/dotfiles/zshrc ~/.zshrc
fi

if [ ! -e ~/.zshenv ]
then
	ln -s ~/dotfiles/zshenv ~/.zshenv
fi

if [ ! -e ~/.tmux.conf ]
then
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.gitconfig ]
then
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
fi

if [ ! -e ~/.gitignore_global ]
then
	ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
fi


if [ ! -e ~/.atom ]
then
	mkdir ~/.atom
fi


if [ ! -e ~/.atom/config.cson ]
	then
	ln -s ~/dotfiles/atom/config.cson ~/.atom/config.cson
fi

if [ ! -e ~/.atom/keymap.cson ]
	then
	ln -s ~/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
fi

if [ ! -e ~/.atom/snippets.cson ]
	then
	ln -s ~/dotfiles/atom/snippets.cson ~/.atom/snippets.cson
fi

if [ ! -e ~/.atom/init.coffee ]
	then
	ln -s ~/dotfiles/atom/init.coffee ~/.atom/init.coffee
fi

if [ ! -e ~/.atom/styles.less ]
	then
	ln -s ~/dotfiles/atom/styles.less ~/.atom/styles.less
fi
