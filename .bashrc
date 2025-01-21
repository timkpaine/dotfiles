#!/bin/bash

# fix for ioctl
[ "$PS1" ] && stty intr '^C'

# fix for rsync/scp
if [[ $- != *i* ]] ; then
  # Shell is non-interactive
  return
fi

# vars
source ~/.bash/vars.sh

# fixes
source ~/.bash/fixes.sh

# aliases
source ~/.bash/aliases.sh

# paths
source ~/.bash/paths.sh

# private
source ~/.bash/private/polygon.sh

# init
source ~/.bash/init.sh

# setup
source ~/.bash/git.sh

cd ~/Developer

