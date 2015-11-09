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
#zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
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

# Git aliases
alias ga='git add'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
alias gc='git commit'

# zsh configuration reload
alias zshre='source ~/.zshrc'

# docker environment
alias de='env | grep DOCKER_'
alias dm='docker-machine'

#=================
# prompt
#=================
export PROMPT='[%~] '

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

#=================
# PATH
#=================
typeset -U path
path=(~/.cask/bin ~/anaconda/bin /usr/local/fsl/bin /usr/local/bin $path)
