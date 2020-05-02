#!/usr/bin/env bash

# Allow usage of aliases
shopt -s expand_aliases

alias UI.Color.Default="echo \$'\033[0m'"

alias UI.Color.Black="echo \$'\033[0;30m'"
alias UI.Color.Red="echo \$'\033[0;31m'"
alias UI.Color.Green="echo \$'\033[0;32m'"
alias UI.Color.Yellow="echo \$'\033[0;33m'"
alias UI.Color.Blue="echo \$'\033[0;34m'"
alias UI.Color.Magenta="echo \$'\033[0;35m'"
alias UI.Color.Cyan="echo \$'\033[0;36m'"
alias UI.Color.LightGray="echo \$'\033[0;37m'"
alias UI.Color.DarkGray="echo \$'\033[0;90m'"
alias UI.Color.LightRed="echo \$'\033[0;91m'"
alias UI.Color.LightGreen="echo \$'\033[0;92m'"
alias UI.Color.LightYellow="echo \$'\033[0;93m'"
alias UI.Color.LightBlue="echo \$'\033[0;94m'"
alias UI.Color.LightMagenta="echo \$'\033[0;95m'"
alias UI.Color.LightCyan="echo \$'\033[0;96m'"
alias UI.Color.White="echo \$'\033[0;97m'"

# flags
alias UI.Color.Bold="echo \$'\033[1m'"
alias UI.Color.Dim="echo \$'\033[2m'"
alias UI.Color.Italics="echo \$'\033[3m'"
alias UI.Color.Underline="echo \$'\033[4m'"
alias UI.Color.Blink="echo \$'\033[5m'"
alias UI.Color.Invert="echo \$'\033[7m'"
alias UI.Color.Invisible="echo \$'\033[8m'"

alias UI.Color.NoBold="echo \$'\033[21m'"
alias UI.Color.NoDim="echo \$'\033[22m'"
alias UI.Color.NoItalics="echo \$'\033[23m'"
alias UI.Color.NoUnderline="echo \$'\033[24m'"
alias UI.Color.NoBlink="echo \$'\033[25m'"
alias UI.Color.NoInvert="echo \$'\033[27m'"
alias UI.Color.NoInvisible="echo \$'\033[28m'"

alias UI.Powerline.PointingArrow="echo -e $'\u27a1'"
alias UI.Powerline.ArrowLeft="echo -e $'\ue0b2'"
alias UI.Powerline.ArrowRight="echo -e $'\ue0b0'"
alias UI.Powerline.ArrowRightDown="echo -e $'\u2198'"
alias UI.Powerline.ArrowDown="echo -e $'\u2B07'"
alias UI.Powerline.PlusMinus="echo -e $'\ue00b1'"
alias UI.Powerline.Branch="echo -e $'\ue0a0'"
alias UI.Powerline.RefersTo="echo -e $'\u27a6'"
alias UI.Powerline.OK="echo -e $'\u2714'"
alias UI.Powerline.Fail="echo -e $'\u2718'"
alias UI.Powerline.Lightning="echo -e $'\u26a1'"
alias UI.Powerline.Cog="echo -e $'\u2699'"
alias UI.Powerline.Heart="echo -e $'\u2764'"

# colorful
alias UI.Powerline.Star="echo -e $'\u2b50'"
alias UI.Powerline.Saxophone="echo -e $'\U1F3B7'"
alias UI.Powerline.ThumbsUp="echo -e $'\U1F44D'"
