
 * Copy install.sh to scripts\sources\cairo
 * Copy Makefile.win32.common to scripts\sources\cairo\build\
   - I changed some include and linker settings. This file is quite simple to read.
 * Open a MinGW shell
 * Goto: /c/roxlu_libs/scripts/sources/cairo
   - Execute: make -f Makefile.win32 "CFG=release"
     (if you want to clean, run: "make -f Makefile.win32 clean')