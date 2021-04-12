#!/bin/bash 
../configure -v -opensource -confirm-license -release -shared \
	-platform linux-g++-64 \
	-device linux-rk3399-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-iconv -no-icu \
	-no-openssl \
	-eglfs \
	-xcb -kms -gbm -linuxfb \
	-nomake tests -nomake examples \
	-no-cups -no-pch \
	-sql-sqlite \
	-opengl es2 \
	-qt-libpng -qt-libjpeg \
	-tslib \
	-sysroot /opt/rootfs-rk3399-ubuntu \
	-prefix /opt/qt-5.6.3-rk3399-2021.01 \
	-hostprefix /opt/qt-5.6.3-rk3399-2021.01 \
	\
	-skip qtactiveqt \
	-skip qtandroidextras \
	-skip qtcanvas3d \
	-skip qtconnectivity \
	-skip qtdoc \
	-skip qtenginio \
	-skip qtimageformats \
	-skip qtlocation \
	-skip qtmacextras \
	-skip qtscript \
	-skip qtsensors \
	-skip qtserialbus \
	-skip qtserialport \
	-skip qtwebchannel \
	-skip qtwebengine \
	-skip qtwebsockets \
	-skip qtwinextras \
	-skip qtx11extras \
	-skip qtxmlpatterns

#	-gbm -kms \
#	-no-xcb -no-xkbcommon-evdev -no-xinput2 -no-xcb-xlib \
#	-icu \
# -skip qt3d \
# -skip qtgraphicaleffects \
