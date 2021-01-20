#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);

	QString msg = "compile flag list\n\n";

#ifdef __linux__
	msg += "__linux__\n";
#endif

#ifdef __GNUC__
	msg += "__GNUC__\n";
#endif


#ifdef __VERSION__
	msg += "__VERSION__ = " __VERSION__ "\n";
#endif

#ifdef __arm__
	msg += "__arm__\n";
#endif

#ifdef __aarch64__
	msg += "__aarch64__\n";
#endif

	ui->plainTextEdit->setPlainText(msg);
}

MainWindow::~MainWindow()
{
	delete ui;
}
