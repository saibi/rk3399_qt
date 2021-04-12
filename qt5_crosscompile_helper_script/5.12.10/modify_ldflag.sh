#!/bin/bash 
if [ $# -ne 1 ]; then
	echo "usage $0 [qtgui-config.pri path]"
	exit 1
fi

if [ -f $1 ]; then
	sed -i "/QMAKE_LIBS_OPENGL_ES2/c\QMAKE_LIBS_OPENGL_ES2 = -lGLESv2" $1
	sed -i "/QMAKE_LIBS_EGL/c\QMAKE_LIBS_EGL = -lEGL" $1
	sed -i "/QMAKE_LIBS_GBM/c\QMAKE_LIBS_GBM = -lgbm" $1
fi
exit 0

