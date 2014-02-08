# History settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# autocompletion
autoload -U compinit
compinit

# ZSH options
setopt autocd appendhistory notify extendedglob

# Aliases
alias la='ls -la'
alias ll='la -l'
alias ec='emacsclient'

# Suffix aliases
alias -s html=google-chrome

export PROMPT='[%~] '