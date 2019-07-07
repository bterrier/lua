project(liblua)

set(SRCS
        core/lapi.c
        core/lcode.c
        core/lctype.c
        core/ldebug.c
        core/ldo.c
        core/lfunc.c
        core/lgc.c
        core/lmem.c
        core/lobject.c
        core/lopcodes.c
        core/lstate.c
        core/lstring.c
        core/ltable.c
        core/ltm.c
        core/lvm.c
        core/lzio.c)


set(SRCS_HEAVY
        core/ldump.c
        core/llex.c
        core/lparser.c
        core/lundump.c)

set(SRCS_LIB
        lib/lauxlib.c
        lib/lbaselib.c
        lib/lbitlib.c
        lib/lcorolib.c
        lib/lmathlib.c
        lib/lstrlib.c
        lib/ltablib.c
        lib/lutf8lib.c
        lib/loadlib.c
        lib/linit.c)

set(SRCS_LIB_HEAVY
        lib/ldblib.c
        lib/liolib.c
        lib/loslib.c
        )

include_directories(core lib)

add_definitions(-DLUA_COMPAT_5_2 -DLUA_USE_POSIX)

add_library(lua ${SRCS} ${SRCS_HEAVY} ${SRCS_LIB} ${SRCS_LIB_HEAVY})

add_library(lualight ${SRCS} ${SRCS_LIB} core/noparser.c)
target_compile_definitions(lualight PUBLIC -DNODUMP -DNOUNDUMP)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)