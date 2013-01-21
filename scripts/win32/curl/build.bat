set pwd=%cd%
cd winbuild

nmake /f Makefile.vc mode=dll VC=10 WITH_DEVEL=.\..\..\..\win32\build\32\md\ WITH_SLL=DLL WITH_ZLIB=dll DEBUG=no MACHINE=x86
cd %pwd%