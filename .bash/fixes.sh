
#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
  export UV_SYSTEM_PYTHON=1
  shopt -s checkwinsize
  force_color_prompt=yes
  export BASH_SILENCE_DEPRECATION_WARNING=1

  # Fix clang
  export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)
  export LIBRARY_PATH="$SDKROOT/usr/lib"
  export LIBRARY_PATH="$LIBRARY_PATH:$SDKROOT/usr/lib"

  export UV_SYSTEM_PYTHON=1
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  true
fi
