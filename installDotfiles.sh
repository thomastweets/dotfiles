#!/bin/zsh -f
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zshenv ~/.zshenv
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
if [ ! -e ~/dotfiles/.emacs.d ]
then
	mkdir ~/.emacs.d
fi
ln -s ~/dotfiles/emacs.d/init.el ~/.emacs.d/init.el
ln -s ~/dotfiles/emacs.d/modules ~/.emacs.d/modules
