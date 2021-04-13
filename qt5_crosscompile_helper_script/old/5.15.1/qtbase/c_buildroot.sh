#!/bin/bash 
../configure -v -opensource -confirm-license -release \
	-platform linux-g++-32 \
	-device linux-rk3399mali-g++ \
	-device-option CROSS_COMPILE=/home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/bin/aarch64-buildroot-linux-gnu- \
	-nomake tests -nomake examples \
	-no-cups -no-pch -no-xcb -no-bundled-xcb-xinput -no-xkbcommon \
	-opengl es2 \
	-sysroot /home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/aarch64-buildroot-linux-gnu/sysroot \
	-prefix /opt/qt-5.15.1-base-rk3399-buildroot-1207 \

#	-ssl \
#	-icu \
#	-tslib \
#	-sqlite \


# CROSS_COMPILE
# -device-option CROSS_COMPILE=/home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/bin/aarch64-buildroot-linux-gnu-
# -device-option CROSS_COMPILE=/opt/gcc-linaro-7.3.1-2018.05-i686_aarch64-linux-gnu/bin/aarch64-linux-gnu- \

# sysroot
# -sysroot /home/saibi/m1t/dev_board_test/rk3399-jd4/firefly-sdk/buildroot/output/rockchip_rk3399/host/aarch64-buildroot-linux-gnu/sysroot \
# -sysroot /opt/rootfs-rk3399pc-ubuntu18.04 \
