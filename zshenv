export EDITOR="atom --wait"

export TERM=xterm-256color

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# FSL Setup
if [ -d "/usr/local/fsl" ]; then
  export FSLDIR=/usr/local/fsl
  . ${FSLDIR}/etc/fslconf/fsl.sh
fi

# Freesurfer Setup
if [ -d "/Applications/freesurfer" ]; then
  export FREESURFER_HOME=/Applications/freesurfer
  export FS_FREESURFERENV_NO_OUTPUT=1
  . $FREESURFER_HOME/SetUpFreeSurfer.sh
fi
