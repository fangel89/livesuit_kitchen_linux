#!/bin/sh
if [ -d ./_extract ]
then
rm -vR ./_extract
fi

if [ -d ./_output ]
then
rm -vR ./_output
fi
echo "Unpacking image from original.img"
./tools/imagesuite/awimage ./original.img
mv -v ./original.img.dump ./_extract
for a in ./_extract/*[0-Z,_]???
do
       mv -v "$a" "$a.fex"
done
mkdir ./_output
mv -v ./_extract/*_SYSTEM_*.fex ./_output/system.fex
mv -v ./_extract/*_BOOT_*.fex ./_output/root.fex
mv -v ./_extract/*_RECOVERY_*.fex ./_output/recovery.fex
mv -v ./_extract/*_BOOTLOADER_*.fex ./_output/bootfs.fex
echo "Done..."
