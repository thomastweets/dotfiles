#!/usr/bin/env bash

# Import colours
source ~/dotfiles/ascii/colour.sh

# banner
# created with $~ toilet -f ~/dotfiles/ascii/CalvinS.flf --filter border DOTFILES
echo -e "$(UI.Color.Red)
┌──────────────────────┐
│╔╦╗╔═╗╔╦╗╔═╗╦╦  ╔═╗╔═╗│
│ ║║║ ║ ║ ╠╣ ║║  ║╣ ╚═╗│
│═╩╝╚═╝ ╩ ╚  ╩╩═╝╚═╝╚═╝│
└──────────────────────┘
      Installation
________________________
$(UI.Color.Default)"

# Overwrite existing files?
echo -n "Do you want to overwrite existing dotfiles? [y/N]: "
read -n 1 overwrite
echo -e ""

if [[ "$overwrite" == "y" ]]; then
	echo -e "$(UI.Powerline.Lightning) $(UI.Color.Red)OK, I will overwrite existing dotfiles!$(UI.Color.Default)"
	overwrite=true
else
	echo -e "Not overwriting existing dotfiles."
	overwrite=false
fi

echo -e "________________________\n"
echo -e "$(UI.Color.Bold)$(UI.Powerline.Cog) Installing dotfiles via symlinks$(UI.Color.Default)"

for dotfile in ~/dotfiles/*; do
	# skip directories and README.md
	if [ -d $dotfile ] || [ $(basename $dotfile) == "README.md" ]; then
		continue
	fi
	if [ ! -e ~/.$(basename $dotfile) ]; then
		ln -s $dotfile ~/.$(basename $dotfile)
		echo -e "$(UI.Color.Green)$(UI.Powerline.OK)$(UI.Color.Default) linking dotfile $(UI.Color.Italics).$(basename $dotfile)$(UI.Color.Default)"
	else
		if [ "$overwrite" == true ]; then
			echo -e "$(UI.Color.Green)$(UI.Powerline.OK)$(UI.Color.Default) dotfile $(UI.Color.Italics).$(basename $dotfile)$(UI.Color.Default) already existing, $(UI.Color.Red)overwriting$(UI.Color.Default)"
			rm ~/.$(basename $dotfile)
			ln -s $dotfile ~/.$(basename $dotfile)
		else
			echo -e "$(UI.Color.Red)$(UI.Powerline.Fail)$(UI.Color.Default) dotfile $(UI.Color.Italics).$(basename $dotfile)$(UI.Color.Default) already existing, skipping"
		fi
	fi
done

echo -e "$(UI.Powerline.Cog) $(UI.Color.Bold)Done!$(UI.Color.Default)"
