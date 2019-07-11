#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QCamera>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:
	explicit MainWindow(QWidget *parent = nullptr);
	~MainWindow();

private slots:
	void on_actionSTART_triggered();

	void on_actionSTOP_triggered();

private:
	Ui::MainWindow *ui;
	QCamera *m_camera;
};

#endif // MAINWINDOW_H
