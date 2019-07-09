#-------------------------------------------------
#
# Project created by QtCreator 2019-06-26T13:30:02
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = hello
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui


linux-rk3399x11-g++ | linux-rk3399mali-g++ {
	#QMAKE_CXXFLAGS += `pkg-config --cflags gstreamer-1.0`
	QMAKE_CXXFLAGS += -pthread -I$$[QT_SYSROOT]/usr/include/gstreamer-1.0 -I$$[QT_SYSROOT]/usr/include/glib-2.0 -I$$[QT_SYSROOT]/usr/lib/aarch64-linux-gnu/glib-2.0/include

	#LIBS += `pkg-config --libs gstreamer-1.0`
	LIBS += -lgstvideo-1.0 -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0


	target.path = /home/saibi/qt
	INSTALLS += target
}
