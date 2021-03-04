#!/bin/bash
clear
source configs/build*.sh

mkdir /drone/src/work/
cd /drone/src/work/

repo init -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0 --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips
repo sync -c -j48 --no-clone-bundle --no-tags 
