#!/bin/bash

# easycron.sh by David Weinman <david@weinman.com>
#
# This file is licensed under the Do what the fuck you want to Public License
# (DWTFYWTPL).  See LICENSE for details.

crontab -l > mycron.txt

min="*"
hour="*"
dom="*"
mon="*"
dow="*"

if [ "$1" == "-d" ]; then
  sed "/$2/d" mycron.txt > tmp && mv tmp mycron.txt
  crontab mycron.txt
elif [ "$1" == "-l" ]; then
  cat mycron.txt
else
  for arg in "$@"
  do
    case $arg in
      *min ) min="${arg%min}";;
      *hr ) hour="${arg%%hr}";;
      *d ) dom="${arg%%d}";;
      *mo ) mon="${arg%%mo}";;
      *dow ) dow="${arg%%dow}";;
    esac
  done
  echo "$min $hour $dom $mon $dow ${@: -1}" >> mycron.txt
  crontab mycron.txt
fi

rm mycron.txt

