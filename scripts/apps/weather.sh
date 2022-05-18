#!/bin/bash

TMP=`mktemp -d`

COUNT=0
while [[ COUNT -le 100 ]]; do
  curl wttr.in/?0 2>/dev/null > $TMP/page
  clear
  printf "\n\n\n\n\n\n\n\n"
  cat $TMP/page
  sleep 10
  COUNT=$((COUNT+1))
done
