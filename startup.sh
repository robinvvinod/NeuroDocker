#!/usr/bin/env bash
set -e
export USER="${USER:=`whoami`}"
echo Some packages in this Docker container are non-free
echo If you are considering commercial use of this container, please consult the relevant license:
echo https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Licence
source "/opt/freesurfer-6.0.0/SetUpFreeSurfer.sh"
export USER=$(whoami)
export DISPLAY=$HOSTNAME:1
if [ -f "$HOME/license.txt" ] ; then cp $HOME/license.txt /opt/freesurfer-6.0.0/ ; fi
if [ -n "$1" ]; then "$@"; else /usr/bin/env bash; fi
