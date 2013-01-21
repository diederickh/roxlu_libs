
 * Open a VS 2010 shell
 * Go to scripts\sources\libuv
 * Run: vcbuild.bat release
   from the shell
 * Open scripts\sources\libv\uv.sln  with VS 2010
 * Select "Release"
 * Select "libuv" > right click > properties
 * Change: 
   Configuration Properties > C/C++ > Runtime Library: Multithreaded DLL /MD
   [OK]
 * Right click "libuv" > rebuild
 * Copy install.bat and execute
 