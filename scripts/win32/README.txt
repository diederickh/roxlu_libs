Compiling roxlu_libs for Win32
------------------------------

1) Install MingW
2) Install 7zip + add path to environment variable
3) Download the xz utils and extract to: MingW\bin\


Compile the libraries in this order:
---------------------------------------------
- zlib           - need to fix the MT version
- win-iconv      - need to fix the MT version
- freetype       - need to fix the MT version
- libxml         - need to fix the MT version
- openssl        - need to fix the MT version
- libffi         - need to fix the MT version
- libpng         - " "
- fontconfig     - use the mingw script to build a static fontconfig.a library
- pixman         - use the mingw script to build a static pixman.a library
