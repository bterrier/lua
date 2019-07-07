project(luac)

set(SRCS luac.c)

add_executable(luac ${SRCS})

target_link_libraries(luac lua m)


include_directories(../liblua/core ../liblua/lib)
