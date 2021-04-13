#!/bin/bash 
../configure -v -opensource -confirm-license -release \
	-platform linux-g++-32 \
	-device linux-rk3399x11-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-nomake tests -nomake examples -no-cups -no-pch \
	-icu \
	-ssl \
	-opengl es2 \
	-qpa xcb -xcb -xkbcommon \
	-sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
	-prefix /opt/qt-5.15.1-rk3399min-x11-1111 \
	-hostprefix /opt/qt-5.15.1-rk3399min-x11-1111 \
	\
	-skip qtactiveqt \
	-skip qtandroidextras \
	-skip qtdatavis3d \
	-skip qtgamepad \
	-skip qtlocation \
	-skip qtlottie \
	-skip qtmacextras \
	-skip qtnetworkauth \
	-skip qtpurchasing \
	-skip qtquicktimeline \
	-skip qtremoteobjects \
	-skip qtscript \
	-skip qtscxml \
	-skip qtsensors \
	-skip qtserialbus \
	-skip qtspeech \
	-skip qtvirtualkeyboard \
	-skip qtwayland \
	-skip qtwebchannel \
	-skip qtwebengine \
	-skip qtwebglplugin \
	-skip qtwebsockets \
	-skip qtwinextras \
	
