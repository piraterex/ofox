#!/bin/bash

# This, is the main point, where all things change

cd /drone/src/work/
# Clone tree START
git clone https://github.com/JamieHoSzeYui/omni_device_xiaomi_merlin device/xiaomi/merlin # Clone your trees here
# CLONE TREE END

# VARIABLES, DEFINE THEM ELSE YOU'RE GAY
DEVICE=merlin
TARGET=recoveryimage
# END VARIABLES

. build/envsetup.sh
lunch omni_$DEVICE-eng
mka $TARGET -j48

# Upload
cd out/target/product/$DEVICE/
touch links.txt
echo "Recovery image: " >> links.txt
transfer wet recovery.img  | grep Download >> links.txt
echo "Backup link on anonfiles : " >> links.txt
curl -F file=@recovery.img https://api.anonymousfiles.io/ >> links.txt

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