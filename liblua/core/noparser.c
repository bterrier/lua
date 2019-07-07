/*
* The code below can be used to make a Lua core that does not contain the
* parsing modules (lcode, llex, lparser), which represent 20% of the total core.
* You'll only be able to load binary files and strings, precompiled with luac.
* (Of course, you'll have to build luac with the original parsing modules!)
*
* To use this module, simply compile it and list its object file before the
* Lua libraries. The linker should then not load the parsing modules.
*
* If you want to avoid the dump module or the undump modules, use the
* corresponding #define below.
*
#define NOPARSER
#define NODUMP
#define NOUNDUMP
*/

#define NOPARSER

#define LUA_CORE
#include "lua.h"

/* --------------------------------------------------------------- noparser */
#ifdef NOPARSER
#include "llex.h"
#include "lparser.h"
#include "lzio.h"

void luaX_init (lua_State *L) {
  UNUSED(L);
}

LClosure *luaY_parser (lua_State *L, ZIO *z, Mbuffer *buff,
                      Dyndata *dyd, const char *name, int firstchar) {
  UNUSED(z);
  UNUSED(buff);
  UNUSED(dyd);
  UNUSED(name);
  UNUSED(firstchar);
  lua_pushliteral(L,"parser not available");
  lua_error(L);
  return NULL;
}
#endif

/* --------------------------------------------------------------- nodump */
#ifdef NODUMP
#include "lundump.h"

LUAI_FUNC int luaU_dump (lua_State* L, const Proto* f, lua_Writer w, void* data, int strip) {
  UNUSED(f);
  UNUSED(w);
  UNUSED(data);
  UNUSED(strip);
  lua_pushliteral(L,"dumper not available");
  lua_error(L);
  return 0;
}
#endif

/* --------------------------------------------------------------- noundump */
#ifdef NOUNDUMP
#include "lundump.h"

LUAI_FUNC LClosure* luaU_undump (lua_State* L, ZIO* Z, const char* name) {
  UNUSED(Z);
  UNUSED(name);
  lua_pushliteral(L,"binary loader not available");
  lua_error(L);
  return NULL;
}
#endif
