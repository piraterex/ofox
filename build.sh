#!/bin/bash

# This, is the main point, where all things change

cd /drone/src/work/fox_10.0
mkdir -p device/xiaomi
cd device/xiaomi


# Clone tree START
git clone https://github.com/piraterex/device_xiaomi_aliothin-ofox aliothin # Clone your trees here
# CLONE TREE END

# VARIABLES, DEFINE THEM ELSE YOU'RE GAY
DEVICE=aliothin
TARGET=recoveryimage
# END VARIABLES
cd /drone/src/work/fox_10.0
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C"
lunch omni_$DEVICE-eng && mka $TARGET

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
cat links.txt 
