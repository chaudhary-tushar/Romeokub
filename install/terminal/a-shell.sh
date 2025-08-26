#!/bin/bash

# Configure the bash shell using Romeokub defaults
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/Romeokub/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/Romeokub/defaults/bash/shell

[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Romeokub defaults
cp ~/.local/share/Romeokub/configs/inputrc ~/.inputrc
