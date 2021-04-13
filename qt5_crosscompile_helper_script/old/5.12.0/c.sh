#!/bin/bash 
../configure -v -opensource -confirm-license -release \
	-platform linux-g++-32 \
	-device linux-aio3399j-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-no-xcb -nomake tests -nomake examples -no-cups -no-pch \
	-opengl es2 \
	-sysroot /opt/rootfs-aio3399j-ubuntu18.04 \
	-prefix /opt/qt-5.12.0-aio3399j-i686-aarch64

