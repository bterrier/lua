project(lua_run)

add_executable(lua_run main.cpp)

target_link_libraries(lua_run lualight)


include_directories(../include)
