#include "mainwindow.h"
#include <QApplication>

#include <gst/gst.h>
#include <gst/video/videooverlay.h>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);
	MainWindow w;
	w.show();



	// gstreamer

	GstElement *pipeline;
	GstElement *video_sink;
	gst_init(&argc, &argv);

	//pipeline = gst_parse_launch("playbin uri=https://www.freedesktop.org/software/gstreamer-sdk/data/media/sintel_trailer-480p.webm", NULL);
	pipeline = gst_parse_launch("rkisp device=/dev/video0 io-mode=1 analyzer=1 enable-3a=1 ! video/x-raw,format=NV12,width=640,height=480,framerate=30/1 ! videoconvert ! glimagesink name=videosink", NULL);

	video_sink = gst_bin_get_by_name(GST_BIN(pipeline), "videosink");

	gst_video_overlay_set_window_handle(GST_VIDEO_OVERLAY(GST_BIN(video_sink)), w.getWindowId());

	gst_object_unref(video_sink);

	gst_element_set_state(pipeline, GST_STATE_PLAYING);

	a.exec();

	gst_element_set_state(pipeline, GST_STATE_NULL);
	gst_object_unref(pipeline);

	return 0;
}
