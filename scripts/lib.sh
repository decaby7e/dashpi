# TODO: Implement failing for locks if attempt is made to grab one that
#       already exists/doesn't exist

export DISPLAY=:0

export DASHPI_BASE_DIR='/home/pi/dashpi'
export DASHPI_MEDIA_DIR="${DASHPI_BASE_DIR}/media"
export DASHPI_SCRIPT_DIR="${DASHPI_BASE_DIR}/scripts"
export DASHPI_LOCKFILE="${DASHPI_BASE_DIR}/nosleep.lock"

dashpi_lockdisplay() {
  if [ ! -f $DASHPI_LOCKFILE ]; then
    echo 'Locking display...'
    touch $DASHPI_LOCKFILE
  else
    echo 'Not locking display: Lock already exists'
  fi
}

dashpi_unlockdisplay() {
  [ -f $DASHPI_LOCKFILE ] && rm $DASHPI_LOCKFILE
}

kill_xorg(){
  # Check for existing x servers and stop them if necessary
  XORG_PID=`pgrep 'Xorg'`
  if [[ ${XORG_PID:-''} -ne '' ]]; then
    kill $XORG_PID
    sleep 0.5
    if ps -p $XORG_PID > /dev/null; then
      kill -9 $XORG_PID
    fi
  fi
}
