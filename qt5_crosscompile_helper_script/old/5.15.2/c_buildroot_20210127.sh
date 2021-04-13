#!/bin/bash 
../configure -v -opensource -confirm-license \
	-release \
	-platform linux-g++-64 \
	-device linux-rk3399-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-nomake tests -nomake examples \
	-no-cups -no-pch \
	-iconv -no-icu \
	-opengl es2 \
	-qt-libpng -qt-libjpeg \
	-sysroot /opt/rootfs-rk3399-buildroot \
	-prefix /opt/qt-5.15.2-rk3399-buildroot-2021.02 \
	-hostprefix /opt/qt-5.15.2-rk3399-buildroot-2021.02 \
	\
	-skip qtactiveqt \
	-skip qtandroidextras \
	-skip qtcharts \
	-skip qtconnectivity \
	-skip qtdatavis3d \
	-skip qtdoc \
	-skip qtgamepad \
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
	-skip qtxmlpatterns 


#	-ssl \
#	-sysroot /home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/aarch64-buildroot-linux-gnu/sysroot \
