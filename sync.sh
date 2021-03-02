#!/bin/bash
clear
source configs/build*.sh

apt-get install rsync -y

mkdir /drone/src/work/
cd /drone/src/work/

repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0 --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips

repo sync -c -j48 --no-clone-bundle --no-tags 

# Ofox grrrrrrrrrrrrrrrr
rm -rf bootable/recovery/
if [[ $(ls vendor/ | grep recovery) ]]; then 
    rm -rf vendor/recovery/
fi

git clone --depth=1 --single-branch https://gitlab.com/OrangeFox/bootable/Recovery -b fox_10.0 bootable/recovery/
git clone --depth=1 --single-branch https://gitlab.com/OrangeFox/vendor/recovery.git -b fox_10.0 vendor/recovery/
