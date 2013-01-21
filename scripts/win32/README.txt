Compiling roxlu_libs for Win32
------------------------------

1) Install MingW
2) Install 7zip + add path to environment variable
3) Download the xz utils and extract to: MingW\bin\


Compile the libraries in this order, and using /MD runtime
-----------------------------------------------------------
- zlib           
- winiconv       
- freetype       
- libxml2        
- openssl        
- libffi         
- libpng         
- fontconfig     - used the mingw script to build fontconfig 
- pixman         - used the mingw script to build pixman
- glib
- cairo
- pango
- libogg
- libvorbis
- theora
- liblamemp3
- libspeex
- libvpx         - used the mingw script to build libvpx
- libav          - used the mingw script to build libav

TODO
----
- compile cairo with freetype, see the build/*win32*features* 
- compile pango with freetype
