#!/bin/bash
clear
source configs/build*.sh

apt-get install rsync -y

mkdir /drone/src/work/
cd /drone/src/work/
rsync rsync://sources.orangefox.download/sources/fox_10.0 . --progress -a
