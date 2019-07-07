# lua
Official Lua releases with advanced build options

The official Lua release produces the following outputs:

 - `liblua.a`: Lua library
 - `lua`: Lua interpreter
 - `luac`: Lua compiler
 
 The build tools provided here produces:
 
  - `liblualight.a`: same as `liblua.a`, but without the lexer and parser to reduce the memory footprint
  - `lua_run`: a sample program to show the usage of `liblualight.a`, it can run Lua code that
  has been already compiled into bytecode using `luac`.
  
 This project does not change Lua code from official releases.
 This means that `liblua.a`, `lua` and `luac` are exactly the same as the ones built from the official releases.
 Also `liblualight.a` is a subset of `liblua.a`, nothing is added except the `noparser.c` file provided by the Lua project.
 
