#!/bin/sh
if [ "$1" = 1 ]
then
  if [ -e ./_temp/bootfs/script.bin ]
  then
    sudo ./tools/sunxi_tools/bin2fex ./_temp/bootfs/script.bin ./_temp/bootfs/script.ini
    sudo rm ./_temp/bootfs/script*.bin
  else
    echo -en "\tFile script.bin not found!"
  fi
else
  if [ -e ./_temp/bootfs/script.ini ]
  then
    sudo ./tools/sunxi_tools/fex2bin ./_temp/bootfs/script.ini ./_temp/bootfs/script.bin
    sudo cp -p ./_temp/bootfs/script.bin ./_temp/bootfs/script0.bin
    sudo rm ./_temp/bootfs/script.ini
  else
    echo -en "\tFile script.ini not found!"
  fi
fi
