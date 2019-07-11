TEMPLATE=app
TARGET=declarative-camera

QT += quick qml multimedia

SOURCES += qmlcamera.cpp
RESOURCES += declarative-camera.qrc

linux-rk3399x11-g++ | linux-rk3399mali-g++ {
	target.path = /home/saibi/qt
	INSTALLS += target
}
