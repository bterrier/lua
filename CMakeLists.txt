cmake_minimum_required(VERSION 3.14)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output/bin)

project(lua)

add_subdirectory(liblua)
add_subdirectory(lua)
add_subdirectory(luac)
add_subdirectory(lua_run)

add_definitions(-DLUA_COMPAT_5_2 -DLUA_USE_POSIX)
