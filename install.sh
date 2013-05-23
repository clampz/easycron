#!/bin/bash

if [ -d ~/bin ]; then
  : 
else
  mkdir ~/bin
fi

#mkdir ~/bin

mv easycron.sh ~/bin/

#if [[ `uname` == 'Linux' ]]; then
#  cat ~/.bashrc > my_bash_profile
#fi
#OS X below
#cat ~/.bash_profile > my_bash_profile

if ! grep -q 'PATH=$PATH:$HOME/bin' "$HOME/.bash_profile"; then
  echo 'if [ -d $HOME/bin ]; then
        PATH=$PATH:$HOME/bin
        fi' >> ~/.bash_profile
fi
if [[ `uname` == 'Linux' ]]; then
  if ! grep -q 'alias easycron' "$HOME/.bashrc"; then
    echo 'alias doesnt exist in bashrc'
    echo "alias easycron='easycron.sh'" >> ~/.bashrc
  fi
elif [[ `uname` == 'Darwin' ]]; then
  if ! grep -q 'alias easycron' "$HOME/.bash_profile"; then
    echo "alias easycron='easycron.sh'" >> ~/.bash_profile
  fi
fi

#OS X below
#cp my_bash_profile ~/.bash_profile

#cat ~/.bash_profile

mv easycron.7 /usr/share/man/man7/


