#!/bin/bash 
../configure -v -opensource -confirm-license -release \
	-platform linux-g++-32 \
	-device linux-rk3399mali-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-nomake tests -nomake examples \
	-no-cups -no-pch -no-xcb -no-bundled-xcb-xinput -no-xkbcommon \
	-icu \
	-sqlite \
	-opengl es2 \
	-tslib \
	-sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
	-prefix /opt/qt-5.15.0-rk3399-mali-test-0616 \

