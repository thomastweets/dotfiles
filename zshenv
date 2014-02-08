export EDITOR="emacsclient"

export TERM=xterm-256color

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# FSL Setup
export FSLDIR=/usr/local/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh

typeset -U path
path=(~/anaconda/bin /usr/local/fsl/bin /usr/local/bin $path)
