#!/bin/sh
if [ ! -d ./_temp ]
then
mkdir ./_temp
fi
cd ./_temp
if [ ! -d bootfs ]
then
mkdir bootfs
else
sudo rm -R ./bootfs/*
fi
mkdir ./bootfs.temp
sudo mount ../_output/bootfs.fex ./bootfs.temp
sudo cp -pR ./bootfs.temp/* ./bootfs/
sudo umount ./bootfs.temp
sudo rm -R ./bootfs.temp
