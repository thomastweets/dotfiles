#!/bin/zsh -f

# ZSH
if [ ! -e ~/.zshrc ]
then
	ln -s ~/dotfiles/zshrc ~/.zshrc
fi

if [ ! -e ~/.zshenv ]
then
	ln -s ~/dotfiles/zshenv ~/.zshenv
fi

# Tmux
if [ ! -e ~/.tmux.conf ]
then
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

# Git
if [ ! -e ~/.gitconfig ]
then
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
fi

if [ ! -e ~/.gitignore_global ]
then
	ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
fi

# BC
if [ ! -e ~/.bcrc ]
then
	ln -s ~/dotfiles/bcrc ~/.bcrc
fi

# Scripts
if [ ! -e /usr/local/bin/bv ]
then
	ln -s ~/dotfiles/scripts/bv /usr/local/bin/bv
fi

# Atom
if [ ! -e ~/.atom ]
then
	mkdir ~/.atom
fi


# if [ ! -e ~/.atom/config.cson ]
	# then
	ln -F -s ~/dotfiles/atom/config.cson ~/.atom/config.cson
# fi

# if [ ! -e ~/.atom/keymap.cson ]
	# then
	ln -F -s ~/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
# fi

# if [ ! -e ~/.atom/snippets.cson ]
	# then
	ln -F -s ~/dotfiles/atom/snippets.cson ~/.atom/snippets.cson
# fi

# if [ ! -e ~/.atom/init.coffee ]
	# then
	ln -F -s ~/dotfiles/atom/init.coffee ~/.atom/init.coffee
# fi

# if [ ! -e ~/.atom/styles.less ]
	# then
	ln -F -s ~/dotfiles/atom/styles.less ~/.atom/styles.less
# fi

# if [ ! -e ~/.atom/projects.cson ]
	# then
	ln -F -s ~/dotfiles/atom/projects.cson ~/.atom/projects.cson
# fi

# Mutt
if [ ! -e ~/.msmtprc ]
then
	ln -s ~/dotfiles/msmtprc ~/.msmtprc
fi

if [ ! -e ~/.muttrc ]
then
	ln -s ~/dotfiles/muttrc ~/.muttrc
fi

if [ ! -e ~/.mutt ]
then
	ln -s ~/dotfiles/mutt ~/.mutt
fi
