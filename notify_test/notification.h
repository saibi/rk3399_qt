#ifndef NOTIFICATION_H
#define NOTIFICATION_H

#include <QObject>

#include <QMutex>

#include "notificationwidget.h"

class Notification : public QObject
{
	Q_OBJECT

private:
	explicit Notification(QObject *parent = 0);
	~Notification();

	Q_DISABLE_COPY(Notification)

public:
	static Notification& instance()
	{
		static Notification notification;
		return notification;
	}

	//
	void notify(const QString& message, int notifySecond = 3, bool refreshNow = false);

	void hide();
	void hide(const QString &message);

	void sticky(const QString& message);

protected:
	virtual void timerEvent(QTimerEvent *);

private:
	QMutex m_mutex;

	NotificationWidget *m_notifyWidget; // use pointer, to prevent segmentation fault when the program exits.

	int m_notifyTimerId;
	bool m_stickyMode;

signals:

public slots:

};

#endif // NOTIFICATION_H
