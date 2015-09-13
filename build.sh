#!/bin/bash

FILES=(Scripts/**/*.applescript)

#mkdir -p ./Applications

OIFS="$IFS"
IFS=$'\n'
for FILE in `find . -type f -name "*.applescript"`; do
  echo "FILE: '${FILE}'"
  OUTFILE="$FILE"
  OUTFILE=$(echo "$OUTFILE" | sed 's/\.applescript$/.app/')
  OUTFILE=$(echo "$OUTFILE" | sed 's/^.\/Scripts//')
  OUTFILE="$HOME/$OUTFILE"
  echo "OUT: '$OUTFILE'"
  OK="n"
  if [ -e "$OUTFILE" ]; then
    read -p "Replace \"$OUTFILE\"? [yn] " -n 1 OK
    echo
  else
    OK="y"
  fi
  if [[ $OK = "y" ]]; then
    osacompile -o "$OUTFILE" "$FILE"
    if [ $? -eq 0 ]; then
      echo "Compiled \"$FILE\" to \"$OUTFILE\""
    else
      echo "Failed compile \"$FILE\" to \"$OUTFILE\""
    fi
  else
    echo "Skipping \"$FILE\""
  fi
done

IFS="$OIFS"

