project(lua)

set(SRCS lua.c)

add_executable(lua-bin ${SRCS})
set_target_properties(lua-bin
PROPERTIES OUTPUT_NAME lua)

target_link_libraries(lua-bin lua m)


include_directories(../liblua/core ../liblua/lib)