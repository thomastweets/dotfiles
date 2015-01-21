export EDITOR="atom"

export TERM=xterm-256color

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# FSL Setup
export FSLDIR=/usr/local/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh

# Freesurfer Setup
export FREESURFER_HOME=/Applications/freesurfer
export FS_FREESURFERENV_NO_OUTPUT=1
. $FREESURFER_HOME/SetUpFreeSurfer.sh

typeset -U path
path=(~/.cask/bin ~/anaconda/bin /usr/local/fsl/bin /usr/local/bin $path)
