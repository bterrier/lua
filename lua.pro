TEMPLATE = subdirs

SUBDIRS += \
    liblua \
    liblualight \
    lua \
    lua_run \
    luac

luac.depends += liblua
lua.depends += liblua
lua_run.depends += liblualight


OTHER_FILES += .qmake.conf
