#include "mainwindow.h"
#include "ui_mainwindow.h"

#if QT_VERSION >= 0x050000
#include <QSysInfo>
#endif

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);

	QString msg;

#if QT_VERSION >= 0x050000
	msg += "QSysInfo\n";
	msg += "buildAbi : " + QSysInfo::buildAbi() + "\n";
	msg += "buildCpuArchitecture : " + QSysInfo::buildCpuArchitecture() + "\n";
	msg += "currentCpuArchitecture : " + QSysInfo::currentCpuArchitecture() + "\n";
	msg += "kernelType : " + QSysInfo::kernelType() + "\n";
	msg += "kernelVersion : " + QSysInfo::kernelVersion() + "\n";
	msg += "machineHostName : " + QSysInfo::machineHostName() + "\n";
	msg += "prettyProductName : " + QSysInfo::prettyProductName() + "\n";
	msg += "productType : " + QSysInfo::productType() + "\n";
	msg += "productVersion : " + QSysInfo::productVersion() + "\n";
#endif

	msg += "\nCompile flag list\n";

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

	msg += "\nQt flags\n";

#ifdef Q_PROCESSOR_ARM
	msg += "Q_PROCESSOR_ARM\n";
#endif
#ifdef Q_PROCESSOR_ARM_V5
	msg += "Q_PROCESSOR_ARM_V5\n";
#endif
#ifdef Q_PROCESSOR_ARM_V6
	msg += "Q_PROCESSOR_ARM_V6\n";
#endif
#ifdef Q_PROCESSOR_ARM_V7
	msg += "Q_PROCESSOR_ARM_V7\n";
#endif


#if QT_VERSION >= 0x050000
	msg+= "Q_PROCESSOR_WORDSIZE : " + QString::number(Q_PROCESSOR_WORDSIZE) + "\n";
#endif

	ui->plainTextEdit->setPlainText(msg);
}

MainWindow::~MainWindow()
{
	delete ui;
}
