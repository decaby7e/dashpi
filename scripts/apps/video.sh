#!/bin/bash

source $(dirname $(realpath -s $0))/../lib.sh

dashpi_lockdisplay

cvlc -q --no-osd -L -f --no-video-title-show \
--x11-display :0 \
$DASHPI_MEDIA_DIR/birds-and-squirrels.mp4

dashpi_unlockdisplay
