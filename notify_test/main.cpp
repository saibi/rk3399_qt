#include "mainwindow.h"
#include <QApplication>

#include "notification.h"

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);

	//Notification::instance().notify("Before MainWindow"); // uncomment this to reproduce full screen problem
	MainWindow w;
	w.show();

	return a.exec();
}
