TEMPLATE = app
TARGET = viewfinder 

QT += multimedia multimediawidgets

HEADERS = \
    camera.h \
    imagesettings.h \
    mycameraviewfinder.h \
    videosettings.h

SOURCES = \
    main.cpp \
    camera.cpp \
    imagesettings.cpp \
    mycameraviewfinder.cpp \
    videosettings.cpp

FORMS += \
    camera.ui \
    videosettings.ui \
    imagesettings.ui

RESOURCES += camera.qrc

linux-rk3399x11-g++ | linux-rk3399mali-g++ {
	target.path = /home/saibi/qt
	INSTALLS += target
}
