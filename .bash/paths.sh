#!/bin/bash
export PATH=$HOME/Developer/miscellaneous/scripts/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.pixi/bin
export PATH=$PATH:$HOME/.spicetify

#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  # export CONDA_ENVS_PATH=/Users/$(whoami)/micromamba/envs
  export MAMBA_ROOT_PREFIX=/Users/$(whoami)/micromamba

  # pnpm
  export PNPM_HOME="/Users/timkpaine/Library/pnpm"
  case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
  esac
  # pnpm end

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  # Vivado
  export VIVADO_VERSION=2024.2
  if [ -f "/opt/Xilinx/Vivado/$VIVADO_VERSION/settings64.sh" ]; then
    source /opt/Xilinx/Vivado/$VIVADO_VERSION/settings64.sh
  fi
  export FINN_XILINX_PATH=/opt/Xilinx
  export FINN_XILINX_VERSION=$VIVADO_VERSION
fi

if micromamba --version > /dev/null 2>&1; then
  eval "$(micromamba shell hook --shell bash)"
fi
