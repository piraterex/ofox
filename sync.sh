#!/bin/bash
clear
source configs/build*.sh

mkdir /drone/src/work/
cd /drone/src/work/
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0 --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips

repo sync -c -j48 --no-clone-bundle --no-tags 
