#!/bin/bash

source $(dirname $(realpath -s $0))/../lib.sh

dashpi_lockdisplay

xterm \
-bg black \
-fg white \
-fa 'Monospace' -fs 25 \
-geometry 600x400+0+0 \
-e $DASHPI_SCRIPT_DIR/weather.sh

dashpi_unlockdisplay
