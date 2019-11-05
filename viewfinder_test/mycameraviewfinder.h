#ifndef MYCAMERAVIEWFINDER_H
#define MYCAMERAVIEWFINDER_H

#include <QCameraViewfinder>
#include <QPainter>

class MyCameraViewFinder : public QCameraViewfinder
{
	Q_OBJECT

public:
	explicit MyCameraViewFinder(QWidget *parent = nullptr) : QCameraViewfinder(parent) {}

	int drawText_x;

protected:
	virtual void paintEvent(QPaintEvent * event) override {
		QCameraViewfinder::paintEvent(event);

		QPainter painter(this);
		painter.drawText(100, 100, "This is my text.");
	}
};

#endif // MYCAMERAVIEWFINDER_H
