TEMPLATE	= lib
CONFIG		+= qt warn_on release
win32:CONFIG	+= static
HEADERS	= qprocess.h
SOURCES	= qprocess.cpp
unix:SOURCES	+= qprocess_unix.cpp
win32:SOURCES	+= qprocess_win.cpp
TARGET		= qutil
DESTDIR		= $(QTDIR)/lib
VERSION		= 1.0.0