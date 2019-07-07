TEMPLATE = app
CONFIG -= qt
CONFIG += c99 console

SOURCES += lua.c


LIBS += -L$$top_builddir/lib -llua

INCLUDEPATH += $$PWD/../liblua/core
DEPENDPATH += $$PWD/../liblua



DESTDIR = $$top_builddir/bin
