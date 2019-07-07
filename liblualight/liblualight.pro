TEMPLATE = lib
TARGET = lualight

DEFINES += LUA_COMPAT_5_2
CONFIG += c99 static
SOURCES += ../liblua/core/lapi.c ../liblua/core/lctype.c ../liblua/core/ldebug.c ../liblua/core/ldo.c \
        ../liblua/core/lfunc.c \
        ../liblua/core/lgc.c \
        ../liblua/core/lmem.c \
        ../liblua/core/lobject.c ../liblua/core/lopcodes.c ../liblua/core/lstate.c ../liblua/core/lstring.c ../liblua/core/ltable.c \
        ../liblua/core/ltm.c  ../liblua/core/lvm.c ../liblua/core/lzio.c \
        ../liblua/core/noparser.c
CONFIG += no_undump
no_undump {
    DEFINES += NOUNDUMP
} else {
    SOURCES += ../liblua/core/lundump.c
}

CONFIG += no_dump
no_dump {
    DEFINES += NODUMP
} else {
    SOURCES += ../liblua/core/ldump.c
}

SOURCES += \
    ../liblua/lib/lauxlib.c \
    ../liblua/lib/lbaselib.c \
    ../liblua/lib/lbitlib.c \
    ../liblua/lib/lcorolib.c \
    ../liblua/lib/lmathlib.c \
    ../liblua/lib/lstrlib.c \
    ../liblua/lib/ltablib.c

#SOURCES += ../liblua/lib/lauxlib.c \
#            ../liblua/lib/liolib.c \
#         ../liblua/lib/loslib.c   ../liblua/lib/lutf8lib.c ../liblua/lib/loadlib.c ../liblua/lib/linit.c


INCLUDEPATH += ../liblua/core ../liblua/lib

INCLUDEPATH += $${top_srcdir}/include

CONFIG -= qt
VERSION = 5.3.5

DESTDIR = $$top_builddir/lib

HEADERS += \
    ../liblua/core/lapi.h \
    ../liblua/core/lcode.h \
    ../liblua/core/lctype.h \
    ../liblua/core/ldebug.h \
    ../liblua/core/ldo.h \
    ../liblua/core/lfunc.h \
    ../liblua/core/lgc.h \
    ../liblua/core/llex.h \
    ../liblua/core/llimits.h \
    ../liblua/core/lmem.h \
    ../liblua/core/lobject.h \
    ../liblua/core/lopcodes.h \
    ../liblua/core/lparser.h \
    ../liblua/core/lprefix.h \
    ../liblua/core/lstate.h \
    ../liblua/core/lstring.h \
    ../liblua/core/ltable.h \
    ../liblua/core/ltm.h \
    ../liblua/core/lundump.h \
    ../liblua/core/lvm.h \
    ../liblua/core/lzio.h
