#!/bin/bash 
../configure -v -opensource -confirm-license -release \
	-platform linux-g++-32 \
	-device linux-rk3399x11-g++ \
	-device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \
	-nomake tests -nomake examples \
	-icu \
	-sqlite \
	-opengl es2 \
	-tslib \
	-skip qtactiveqt -skip qtandroidextras -skip qtgamepad -skip qtmacextras -skip qtpurchasing -skip qtsensors -skip qtserialbus -skip qtwinextras \
	-skip qtscript -skip qtscxml -skip qtdatavis3d -skip qtnetworkauth -skip qtvirtualkeyboard -skip qtwebglplugin -skip qtwayland -skip qtwebengine \
	-sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
	-prefix /opt/qt-5.12.4-rk3399-x11-0805 \
	-hostprefix /opt/qt-5.12.4-rk3399-x11-0805
	

#-syslog  # 로그 syslog 연동 
#-system-webengine-icu -system-webengine-ffmpeg -system-webengine-opus -system-webengine-webp -webengine-printing-and-pdf -webengine-pepper-plugins  # webengine switch

#	-cups \
#	-xcb -system-xcb \
#	-system-libpng -system-libjpeg -mng -system-tiff -system-webp \
