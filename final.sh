#!/bin/bash
cd ~/rom

. build/envsetup.sh
export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export BUILD_USERNAME="rahmad"
export BUILD_HOSTNAME="IDN-Labs"
ccache -M 100G -F 0
ccache -o compression=true
ccache -z

$lunch
export CONFIG_LOCALVERSION_AUTO=y
$make -j8

