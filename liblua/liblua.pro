TEMPLATE = lib
TARGET = lua

CONFIG += c99 static
SOURCES += core/lapi.c core/lcode.c core/lctype.c core/ldebug.c core/ldo.c core/ldump.c core/lfunc.c core/lgc.c core/llex.c \
        core/lmem.c core/lobject.c core/lopcodes.c core/lparser.c core/lstate.c core/lstring.c core/ltable.c \
        core/ltm.c core/lundump.c core/lvm.c core/lzio.c

SOURCES += lib/lauxlib.c lib/lbaselib.c lib/lbitlib.c lib/lcorolib.c lib/ldblib.c lib/liolib.c \
        lib/lmathlib.c lib/loslib.c lib/lstrlib.c lib/ltablib.c lib/lutf8lib.c lib/loadlib.c lib/linit.c

INCLUDEPATH += core lib $${top_srcdir}/include

CONFIG -= qt
VERSION = 5.3.5

DESTDIR = $$top_builddir/lib

HEADERS += \
    core/lapi.h \
    core/lcode.h \
    core/lctype.h \
    core/ldebug.h \
    core/ldo.h \
    core/lfunc.h \
    core/lgc.h \
    core/llex.h \
    core/llimits.h \
    core/lmem.h \
    core/lobject.h \
    core/lopcodes.h \
    core/lparser.h \
    core/lprefix.h \
    core/lstate.h \
    core/lstring.h \
    core/ltable.h \
    core/ltm.h \
    core/lundump.h \
    core/lvm.h \
    core/lzio.h
