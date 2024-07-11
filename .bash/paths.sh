#!/bin/bash
export PATH=$PATH:$HOME/Developer/miscellaneous/scripts/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.pixi/bin

#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  true

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

  # Vivado
  source /opt/Xilinx/Vivado/2023.2/settings64.sh
  export FINN_XILINX_PATH=/opt/Xilinx
  export FINN_XILINX_VERSION=2023.2

fi
