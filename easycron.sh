#!/bin/bash

crontab -l > mycron.txt

min="*"
hour="*"
dom="*"
mon="*"
dow="*"

if [ "$1" == "-d" ]; then
  sed "/$2/d" mycron.txt > tmp && mv tmp mycron.txt
  crontab mycron.txt
  rm mycron.txt
elif [ "$1" == "-l" ]; then
  cat mycron.txt
  rm mycron.txt
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
  rm mycron.txt
fi


