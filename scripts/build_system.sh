#!/bin/bash
cd ./tools
if [ -e ../_temp/new-system.fex ]
then
sudo rm ../_temp/new-system.fex
fi
sudo ./mkuserimg.sh -s ../_temp/system ../_temp/new-system.fex ext4 ../tmp 512M
sudo mv ../_temp/new-system.fex ../_input/system.fex
