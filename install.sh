#!/bin/bash

mkdir ~/bin

mv easycron.sh ~/bin/

echo 'if [ -d $HOME/bin ]; then
        PATH=$PATH:$HOME/bin
fi

alias easycron='easycron.sh'' >> ~/.bash_profile

mv easycron.7 /usr/share/man/man7/


