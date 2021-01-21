#ifndef NOTIFICATIONWIDGET_H
#define NOTIFICATIONWIDGET_H

#include <QWidget>

namespace Ui {
	class NotificationWidget;
}

class NotificationWidget : public QWidget
{
	Q_OBJECT

public:
	explicit NotificationWidget(QWidget *parent = 0);
	~NotificationWidget();

	void setText(const QString& text);
	QString text();

protected:
	virtual void showEvent(QShowEvent *);

	virtual void mousePressEvent(QMouseEvent *);

private slots:

private:
	Ui::NotificationWidget *ui;
};

#endif // NOTIFICATIONWIDGET_H
