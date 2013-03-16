#!/bin/bash
function menu {
clear
echo "	----------------------------------------"
echo "			< Menu >"
echo "	----------------------------------------"
echo "	1 - Extract image from file original.img"
echo "	2 - Create image file"
echo "	3 - Extract bootfs image"
echo "	4 - Extract root image"
echo "	5 - Extract recovery image"
echo "	6 - Extract system image"
echo "	7 - Create bootfs image file"
echo "	8 - Create root image file"
echo "	9 - Create recovery image file"
echo "	0 - Create system image file"
echo "	----------------------------------------"
echo "	f - Convert script.bin to script.ini"
echo "	b - Convert script.ini to script.bin"
echo "	----------------------------------------"
echo "	d - Delete all files"
echo "	q - Exit"
read -n 1 command
}
while [ $? -ne 1 ]
do
        menu

case $command in
1) ./scripts/extract_image.sh
   ;;
2) ./scripts/create_image.sh
   ;;
3) ./scripts/extract_bootfs.sh
   ;;
4) ./scripts/extract_root.sh
   ;;
5) ./scripts/extract_recovery.sh
   ;;
6) ./scripts/extract_system.sh
   ;;
7) ./scripts/build_bootfs.sh
   ;;
8) ./scripts/build_root.sh
   ;;
9) ./scripts/build_recovery.sh
   ;;
0) ./scripts/build_system.sh
   ;;
d) ./scripts/clean.sh
   ;;
f) ./scripts/fexc_script.sh 1
   ;;
b) ./scripts/fexc_script.sh 2
   ;;
q) exit 0
break
   ;;
esac
echo -en "\n\n\t\t\tPress any key..."
read -n 1 line
done