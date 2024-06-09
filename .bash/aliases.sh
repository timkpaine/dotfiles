#!/bin/bash

########
# Core #
########
alias mv="mv -i $*"
alias rm="rm -i $*"
alias cp="cp -i $*"
alias cl="clear"
alias ll="ls -alhF -G"
alias ls="ls -hFG"
alias l="ls -hFG"
alias ps="ps -al"
alias px='ps -alx'
# alias vim='export GRAPHICAL=0; mvim -v'
# alias gvim='export GRAPHICAL=1; mvim'

if [ "$(uname)" == "Darwin" ]; then
  alias ldd='otool -L'
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  true
fi


#######
# Fun #
#######
alias start_talking='while :; do perl -e '"'"'open IN, "</usr/share/dict/words";rand($.) < 2 && ($n=$_) while <IN>;print $n'"'"' | say; done'
alias star_wars='telnet towel.blinkenlights.nl'
alias fuck='$(thefuck $(fc -ln -1))'


##########
# Python #
##########
alias p3='python3'
alias p2='python2'
alias pip_update_all='python2 -m pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 python2 -m pip install -U'
alias pip3_update_all='python3 -m pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 python3 -m pip install -U'
