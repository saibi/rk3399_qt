#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "notification.h"

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::on_pushButton_clicked()
{
	qDebug("[%s]", Q_FUNC_INFO);

	Notification::instance().notify(ui->lineEdit->text());
}
