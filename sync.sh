#!/bin/bash
clear
source configs/build*.sh

mkdir /drone/src/work/
cd /drone/src/work/

git clone https://gitlab.com/OrangeFox/sync.git
cd /drone/src/work/sync
./get_fox_10.sh /drone/src/work/fox_10.0
