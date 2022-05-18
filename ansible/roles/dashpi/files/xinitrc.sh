# Keep Xorg alive without running program

LOCKFILE='/home/pi/dashpi/nosleep.lock'

# Cleanup the lock if it was left behind
[ -f $LOCKFILE ] && rm -f $LOCKFILE

while true; do
  if [ -f $LOCKFILE ]; then
    xset -dpms
  else
    xset dpms force standby
  fi
  sleep 2
done
