#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QVideoWidget>
#include <QCameraInfo>
#include <QCameraViewfinderSettings>
#include <QDebug>

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);

	QVideoWidget *videoDisplay = new QVideoWidget(this);
	setCentralWidget(videoDisplay);

	// get a list of available cameras
	QList<QCameraInfo> cameras = QCameraInfo::availableCameras();

	// just pick the first
	if ( cameras.size() > 0 )
	{
		qDebug() << "creating camera from " << cameras.at(0).deviceName() << cameras.at(0).description();
		m_camera = new QCamera(cameras.at(0));
		if ( m_camera )
		{
			m_camera->setViewfinder(videoDisplay);
			m_camera->setCaptureMode((QCamera::CaptureViewfinder));
			QCameraViewfinderSettings settings = m_camera->viewfinderSettings();

			// change settings
			settings.setResolution(QSize(640, 480)); // madatory
			settings.setPixelFormat(QVideoFrame::Format_NV12); // mandatory
			settings.setPixelAspectRatio(QSize(4, 3));
			settings.setMinimumFrameRate(10.0);
			settings.setMaximumFrameRate(30.0);


			m_camera->setViewfinderSettings(settings);
		}
	}
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::on_actionSTART_triggered()
{
	qDebug("[%s]", Q_FUNC_INFO);
	if ( m_camera )
		m_camera->start();
}


void MainWindow::on_actionSTOP_triggered()
{
	qDebug("[%s]", Q_FUNC_INFO);
	if ( m_camera )
		m_camera->stop();
}
