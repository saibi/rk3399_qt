#!/bin/bash 
../configure -v -opensource -confirm-license \
	-release \
	-platform linux-g++-32 \
	-device linux-rk3399-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-nomake tests -nomake examples \
	-no-cups -no-pch \
	-iconv -no-icu \
	-ssl \
	-opengl es2 \
	-sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
	-prefix /opt/qt-5.15.2-rk3399-20.12 \
	-hostprefix /opt/qt-5.15.2-rk3399-20.12 \
	\
	-skip qt3d \
	-skip qtactiveqt \
	-skip qtandroidextras \
	-skip qtcharts \
	-skip qtconnectivity \
	-skip qtdatavis3d \
	-skip qtdoc \
	-skip qtgamepad \
	-skip qtgraphicaleffects \
	-skip qtimageformats \
	-skip qtlocation \
	-skip qtlottie \
	-skip qtmacextras \
	-skip qtnetworkauth \
	-skip qtpurchasing \
	-skip qtquick3d \
	-skip qtquicktimeline \
	-skip qtremoteobjects \
	-skip qtscript \
	-skip qtscxml \
	-skip qtsensors \
	-skip qtserialbus \
	-skip qtserialport \
	-skip qtspeech \
	-skip qtvirtualkeyboard \
	-skip qtwebchannel \
	-skip qtwebengine \
	-skip qtwebglplugin \
	-skip qtwebsockets \
	-skip qtwinextras \
	-skip qtx11extras \
	-skip qtxmlpatterns \
	
exit 0
