#!/bin/bash


export PATH=/aosp-toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/:/aosp-toolchain/clang/host/linux-x86/clang-r416183c/bin/:$PATH

export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=T
export ARCH=arm64


mkdir out
make ARCH=arm64 O=out CROSS_COMPILE=aarch64-linux-androidkernel- CLANG_TRIPLE=aarch64-linux-gnu- HerokeTKZ_defconfig
make ARCH=arm64 O=out CROSS_COMPILE=aarch64-linux-androidkernel- CLANG_TRIPLE=aarch64-linux-gnu- -j64
