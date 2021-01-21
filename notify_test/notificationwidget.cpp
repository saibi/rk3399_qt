#include "notificationwidget.h"
#include "ui_notificationwidget.h"

#include <QDesktopWidget>

NotificationWidget::NotificationWidget(QWidget *parent) :
	QWidget(parent),
	ui(new Ui::NotificationWidget)
{
	ui->setupUi(this);

	setWindowFlags(
				Qt::Tool |
				Qt::FramelessWindowHint |
				Qt::WindowSystemMenuHint |
				Qt::WindowStaysOnTopHint
				);
	setAttribute(Qt::WA_TranslucentBackground);
}

NotificationWidget::~NotificationWidget()
{
	delete ui;
}

void NotificationWidget::showEvent(QShowEvent *)
{
	QRect frect = this->frameGeometry();
	frect.moveCenter(
				QPoint(
					QDesktopWidget().availableGeometry().center().x(),
					QDesktopWidget().availableGeometry().bottom() - (this->height() / 1.5)
					)
				);

	this->move(frect.topLeft());
	qDebug("[NotificationWidget::showEvent] width %d, height %d, topLeft(%d, %d) ", this->size().width(), this->size().height(), frect.topLeft().x(), frect.topLeft().y());
}

void NotificationWidget::mousePressEvent(QMouseEvent *)
{
}

void NotificationWidget::setText(const QString &text)
{
	ui->label->setText(text);
}

QString NotificationWidget::text()
{
	return ui->label->text();
}
