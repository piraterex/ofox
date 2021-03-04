#!/bin/bash

# This, is the main point, where all things change

cd /drone/src/work/
# Clone tree START
git clone https://github.com/CPH1859/android_device_CPH1861_TWRP device/oppo/CPH1861 # Clone your trees here
# CLONE TREE END

# VARIABLES, DEFINE THEM ELSE YOU'RE GAY
DEVICE=CPH1861
TARGET=recoveryimage
# END VARIABLES

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_$DEVICE-eng
mka $TARGET -j48

# Upload
cd out/target/product/$DEVICE/
touch links.txt
echo "Recovery image on wetransfer: " >> links.txt
transfer wet recovery.img  | grep Download >> links.txt
echo "Recovery zip on wetransfer: " >> links.txt 
transfer wet Orange*.zip | grep Download >> links.txt 

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "" 
cat links.txt 
