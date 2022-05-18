#!/bin/bash

source $(dirname $(realpath -s $0))/lib.sh

$DASHPI_SCRIPT_DIR/video.sh
$DASHPI_SCRIPT_DIR/weather-xterm.sh
