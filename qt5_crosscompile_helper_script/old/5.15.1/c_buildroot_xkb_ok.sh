#!/bin/bash 
../configure -v -opensource -confirm-license \
	-release \
	-platform linux-g++-32 \
	-device linux-rk3399mali-g++ \
	-nomake tests -nomake examples \
	-no-cups -no-pch -no-xcb -no-bundled-xcb-xinput \
	-opengl es2 \
	\
	-device-option CROSS_COMPILE=/home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/bin/aarch64-buildroot-linux-gnu- \
	-sysroot /home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/aarch64-buildroot-linux-gnu/sysroot \
	\
	-prefix /opt/qt-5.15.1-rk3399-buildroot-1207 \
	-hostprefix /opt/qt-5.15.1-rk3399-buildroot-1207 \
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

#	-icu \
#	-ssl \
#	-tslib \
#	-sqlite \
#	-no-xkbcommon \
# -skip qtwayland \
