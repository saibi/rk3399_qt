#!/bin/bash 
../configure -v -opensource -confirm-license \
	-release -shared \
	-platform linux-g++-32 \
	-device linux-rk3399mali-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-gbm -kms \
	-eglfs \
	-nomake tests -nomake examples \
	-no-cups -no-pch -no-xcb -no-xkbcommon-evdev -no-xinput2 -no-xcb-xlib \
	-sql-sqlite \
	-opengl es2 \
	-tslib \
	-sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
	-prefix /opt/qt-5.6.3-base-rk3399-mali-test-0618 \

# -release
#-kms -gbm \
	#-icu \
#	-device linux-rk3399mali-g++ \
#	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
#	-device-option CROSS_COMPILE=/opt/gcc-linaro-5.3.1-2016.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
