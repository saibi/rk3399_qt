#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);

	m_widget = 0;
}

MainWindow::~MainWindow()
{
	delete ui;
}

WId MainWindow::getWindowId()
{
	return ui->widget_cam->winId();
}

void MainWindow::on_pushButton_clicked()
{
	if ( m_widget == 0 )
	{
		m_widget = new QWidget(ui->widget_cam);
		Q_CHECK_PTR(m_widget);


		m_widget->setMinimumSize(100, 100);

		QLabel *label = new QLabel(m_widget);
		Q_CHECK_PTR(label);

		label->setText("HELLO WORLD");


	}
	m_widget->show();

}
