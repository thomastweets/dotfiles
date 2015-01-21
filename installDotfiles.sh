#!/bin/zsh -f
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zshenv ~/.zshenv
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
if [ ! -e ~/dotfiles/.atom ]
then
	mkdir ~/.atom
fi
ln -s ~/dotfiles/atom/config.cson ~/.atom/config.cson
ln -s ~/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
ln -s ~/dotfiles/atom/snippets.cson ~/.atom/snippets.cson
ln -s ~/dotfiles/atom/init.coffee ~/.atom/init.coffee
ln -s ~/dotfiles/atom/styles.less /.atom/styles.less
