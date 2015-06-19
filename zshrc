# beeps are annoying
setopt NO_BEEP

#=================
# history
#=================
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#share history between sessions
setopt APPEND_HISTORY

#=================
# autocompletion
#=================
autoload -U compinit
compinit

# do not jump to the first match of the menu immediately
unsetopt MENU_COMPLETE
# ignore case during auto-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# change the highlight color
#zstyle ':completion:*' list-colors ${(s.:.)32}

#=================
# misc
#=================

# change folders without typing cd
setopt autocd
setopt notify
setopt extendedglob

#=================
# aliases
#=================
alias la='ls -la'
alias ll='la -l'
alias ec='emacsclient'
alias zs='source ~/.zshrc'

# Suffix aliases
alias -s html=google-chrome

#=================
# prompt
#=================
export PROMPT='[%~] '
