#!/bin/bash 
../configure -v -opensource -confirm-license -release -shared \
	-platform linux-g++-32 \
	-device linux-rk3399mali-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-gbm -kms \
	-eglfs \
	-nomake tests -nomake examples \
	-no-cups -no-pch -no-xcb -no-xkbcommon-evdev -no-xinput2 -no-xcb-xlib \
	-icu \
	-sql-sqlite \
	-opengl es2 \
	-tslib \
	-sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
	-prefix /opt/qt-5.6.3-rk3399-mali-0729 \
	-hostprefix /opt/qt-5.6.3-rk3399-mali-0729 \
	\
	-skip qtactiveqt \
	-skip qtandroidextras \
	-skip qtconnectivity \
	-skip qtlocation \
	-skip qtmacextras \
	-skip qtscript \
	-skip qtsensors \
	-skip qtserialbus \
	-skip qtwayland \
	-skip qtwebchannel \
	-skip qtwebengine \
	-skip qtwebsockets \
	-skip qtwinextras \
	-skip qtx11extras 

