#include "mainwindow.h"
#include <QApplication>

#include "notification.h"
#include <QWidget>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);

	qDebug("platformName : %s", qPrintable(QApplication::platformName()));

	QWidget topWindow;

	if (QApplication::platformName() == "eglfs")
	{
		topWindow.setStyleSheet("QWidget { background-color: black;}");
		topWindow.showFullScreen();
		topWindow.hide();
	}

	Notification::instance().notify("Before MainWindow"); // uncomment this to reproduce full screen problem
	MainWindow w;
	w.show();

	return a.exec();
}
