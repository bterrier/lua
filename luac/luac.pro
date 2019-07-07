TEMPLATE = app
SOURCES += luac.c
CONFIG += c99 console
CONFIG -= qt

LIBS += -L$$top_builddir/lib -llua

INCLUDEPATH += $$PWD/../liblua/core
DEPENDPATH += $$PWD/../liblua

LIBS += -lm

CONFIG += warn_on


DESTDIR = $$top_builddir/bin
