#!/bin/bash
export PATH=$HOME/Developer/miscellaneous/scripts/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.pixi/bin
export PATH=$PATH:$HOME/.spicetify

#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  # export CONDA_ENVS_PATH=/Users/$(whoami)/micromamba/envs
  export MAMBA_ROOT_PREFIX=/Users/$(whoami)/micromamba
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  # Vivado
  source /opt/Xilinx/Vivado/2024.2/settings64.sh
  export FINN_XILINX_PATH=/opt/Xilinx
  export FINN_XILINX_VERSION=2024.2

fi

eval "$(micromamba shell hook --shell bash)"
