#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then

  # lunchy
  source /opt/homebrew/Cellar/lunchy/0.10.4/libexec/gems/lunchy-0.10.4/extras/lunchy-completion.bash
  source /opt/homebrew/Cellar/lunchy/0.10.4/etc/bash_completion.d/lunchy-completion.bash

  # fzf
  source /opt/homebrew/Cellar/fzf/0.67.0/shell/completion.bash
  source /opt/homebrew/Cellar/fzf/0.67.0/shell/key-bindings.bash

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
  eval "$(/opt/homebrew/bin/brew shellenv)" > /dev/null 2>&1

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  # ubuntu-specific
  # next and previous tab keybindings
  gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ next-tab '<Primary>Tab' > /dev/null 2>&1
  gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ prev-tab '<Primary><Shift>Tab' > /dev/null 2>&1

  # remove super+num quick open
  gsettings set org.gnome.shell.keybindings open-new-window-application-1 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-2 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-3 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-4 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-5 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-6 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-7 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-8 [] > /dev/null 2>&1
  gsettings set org.gnome.shell.keybindings open-new-window-application-9 [] > /dev/null 2>&1

  # fix topbar date to include date, seconds, and weekday
  gsettings set org.gnome.desktop.interface clock-show-date true > /dev/null 2>&1
  gsettings set org.gnome.desktop.interface clock-show-seconds true > /dev/null 2>&1
  gsettings set org.gnome.desktop.interface clock-show-weekday true > /dev/null 2>&1

  # lower keyboard repeat and delay
  gsettings set org.gnome.desktop.peripherals.keyboard delay 150 > /dev/null 2>&1
  gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 20 > /dev/null 2>&1

  # fzf
  [ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash
  [ -f /usr/share/bash-completion/completions/fzf ] && source /usr/share/bash-completion/completions/fzf

  # uv venv
  source ~/.venvs/tkp/bin/activate
  export VIRTUAL_ENV=~/.venvs/tkp
  export UV_PROJECT_ENVIRONMENT=~/.venvs/tkp
fi

# rust
if [ -f "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

