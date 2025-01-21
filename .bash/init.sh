#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then

  # lunchy
  source /opt/homebrew/Cellar/lunchy/0.10.4/libexec/gems/lunchy-0.10.4/extras/lunchy-completion.bash
  source /opt/homebrew/Cellar/lunchy/0.10.4/etc/bash_completion.d/lunchy-completion.bash

  # fzf
  source /opt/homebrew/Cellar/fzf/0.57.0/shell/completion.bash
  source /opt/homebrew/Cellar/fzf/0.57.0/shell/key-bindings.bash


  # nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  # nvm use 16 > /dev/null 2>&1
  # nvm alias default 16 > /dev/null 2>&1

  # ruby
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  # mac
  eval $(/usr/libexec/path_helper -s)
  # Set PATH, MANPATH, etc., for Homebrew.
  eval "$(/opt/homebrew/bin/brew shellenv)"

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  # ubuntu-specific
  # next and previous tab keybindings
  gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ next-tab '<Primary>Tab'
  gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ prev-tab '<Primary><Shift>Tab'

  # fix topbar date to include date, seconds, and weekday
  gsettings set org.gnome.desktop.interface clock-show-date true
  gsettings set org.gnome.desktop.interface clock-show-seconds true
  gsettings set org.gnome.desktop.interface clock-show-weekday true

  # lower keyboard repeat and delay
  gsettings set org.gnome.desktop.peripherals.keyboard delay 150
  gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 20

fi

# rust
source "$HOME/.cargo/env"

