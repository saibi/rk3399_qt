#include "notification.h"

#include <QMutexLocker>
#include <QApplication>

Notification::Notification(QObject *parent) :
	QObject(parent),
	m_mutex(QMutex::Recursive)
{
	m_notifyWidget = new NotificationWidget();
	Q_CHECK_PTR(m_notifyWidget);

	// timer has error. If there is no time out after starting SW, time out is not working properly.
	// So, we must make time out forcely.
	// ex) timer start -> before expired, kill timer -> another timer start -> there is no time out.
	m_notifyTimerId = startTimer(500);

	// For upper problem, you must make this object at starting SW to make timer expired.
	// at 120510 by bmkim

	m_stickyMode = false;
}

Notification::~Notification()
{
	// do not delete m_notifyWidget
}

void Notification::timerEvent(QTimerEvent *event)
{
	Q_UNUSED(event);
	hide();
}

void Notification::notify(const QString &message, int notifySecond, bool refreshNow)
{
	QMutexLocker locker(&m_mutex);

	if ( m_stickyMode )
		return; // to turn off sticky mode, call hide(message) first

	if (m_notifyTimerId)
	{
		killTimer(m_notifyTimerId);
		m_notifyTimerId = 0;
	}

	m_notifyWidget->hide();
	m_notifyWidget->setText(message);
	m_notifyWidget->show();
	m_notifyWidget->update();

	if (notifySecond > 0)
	{
		m_notifyTimerId = startTimer(notifySecond * 1000);
	}

	if ( refreshNow )
		QApplication::processEvents();
}

void Notification::hide()
{
	QMutexLocker locker(&m_mutex);

	if (m_notifyTimerId)
	{
		killTimer(m_notifyTimerId);
		m_notifyTimerId = 0;
	}

	m_notifyWidget->hide();
	m_stickyMode = false;
}

void Notification::hide(const QString &message)
{
	QMutexLocker locker(&m_mutex);

	if(m_notifyWidget->text() != message)
		return;

	if (m_notifyTimerId)
	{
		killTimer(m_notifyTimerId);
		m_notifyTimerId = 0;
	}

	m_notifyWidget->hide();
	m_stickyMode = false;
}

void Notification::sticky(const QString &message)
{
	QMutexLocker locker(&m_mutex);

	if ( m_stickyMode )
		return; // to turn off sticky mode, call hide() first

	if (m_notifyTimerId)
	{
		killTimer(m_notifyTimerId);
		m_notifyTimerId = 0;
	}

	m_notifyWidget->hide();
	m_notifyWidget->setText(message);
	m_notifyWidget->show();
	m_stickyMode = true;
}
