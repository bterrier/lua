TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

INCLUDEPATH += ../include



DESTDIR = $$top_builddir/bin
CONFIG +=
heavy {
    TARGET = lua_run_heavy
    LIBS += -L$$top_builddir/lib -llua
} else {
    TARGET = lua_run_light
    LIBS += -L$$top_builddir/lib -llualight
}
