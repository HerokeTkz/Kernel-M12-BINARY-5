#!/bin/bash


export PATH=/aosp-toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/:/aosp-toolchain/clang/host/linux-x86/clang-r437112/bin/:$PATH

export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=T
export ARCH=arm64


make ARCH=arm64 HerokeTKZ_defconfig
make
