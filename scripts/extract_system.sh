#!/bin/bash
if [ ! -d ./_temp ]
then
mkdir ./_temp
fi
cd ./_temp
../tools/simg2img ../_output/system.fex ./system.img
if [ ! -d system ]
then
mkdir system
else
sudo rm -R ./system/*
fi
mkdir ./system.temp
sudo mount ./system.img ./system.temp
sudo cp -pR ./system.temp/* ./system/
sudo umount ./system.temp
sudo rm -R ./system.temp
rm ./system.img
