#!/bin/zsh -f

echo -e "\e[4mInstalling scripts via symlinks\e[0m"
# Overwrite existing files?
overwrite=false

# List of scripts to install
scripts=(
bv
ml
delayType
keygen
)

for script in $scripts; do
	echo -e "Installing \e[31m$script\e[0m"
	if [ ! -e /usr/local/bin/$script ]; then
		ln -s ~/dotfiles/scripts/$script /usr/local/bin/$script
		echo Done!
	else
		if [ "$overwrite" = true ]; then
			echo file already existing, overwriting!
			rm /usr/local/bin/$script
			ln -s ~/dotfiles/scripts/$script /usr/local/bin/$script
			echo Done!
		else
			echo file already existing, skipping.
		fi
	fi
done
