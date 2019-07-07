#include <cstdio>
#include <lua.hpp>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    if (argc != 2) {
        cout << "Usage: lua_run <file>" << endl;
        return -1;
    }

    char buffer [1024] = { 0 };
    FILE *file = fopen(argv[1], "r");

    if (!file) {
        cout << "Failed to open file: " << argv[1] << endl;
        return -1;
    }

    auto loaded = fread(buffer, 1, 1024, file);
    fclose(file);

    lua_State *state = luaL_newstate();

    luaopen_base(state);
    luaopen_bit32(state);
    luaopen_coroutine(state);
    luaopen_math(state);
    luaopen_string(state);
    luaopen_table(state);

    int  error = luaL_loadbufferx(state, buffer, loaded, "aa", "b");

    if (error != LUA_OK) {
        return -1;
    }

    error = lua_pcall(state, 0, 0, 0);

    if (error != LUA_OK) {
        return -1;
    }

    return 0;
}
