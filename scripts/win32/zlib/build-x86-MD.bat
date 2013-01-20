:: run this from a VS x86 command prompt
@echo off

SET PACKAGE_NAME=zlib

nmake -f win32\Makefile_MD.msc clean
nmake -f win32\Makefile_MD.msc LOC="-DASMV -DASMINF" OBJA="inffas32.obj match686.obj"
set BUILD_DEST=%cd%\..\..\win32\build\32\md\

set ZLIB_SRC=%cd%
set ZLIB_DEST=%cd%-x86
nmake -f win32\Makefile_MD.msc test
echo.Press return when ready to install!
pause

rmdir /q /s %ZLIB_DEST%
mkdir %ZLIB_DEST%
mkdir %ZLIB_DEST%\bin
mkdir %ZLIB_DEST%\include
mkdir %ZLIB_DEST%\lib
mkdir %ZLIB_DEST%\share
mkdir %ZLIB_DEST%\share\doc
mkdir %ZLIB_DEST%\share\doc\zlib
copy zlib.h %ZLIB_DEST%\include
copy zconf.h %ZLIB_DEST%\include
copy zdll.lib %ZLIB_DEST%\lib
copy zlib.lib %ZLIB_DEST%\lib
copy zlib1.dll %ZLIB_DEST%\bin
copy README %ZLIB_DEST%\share\doc\zlib\COPYING

copy zlib.h %BUILD_DEST%\include\
copy zconf.h %BUILD_DEST%\include\
copy zdll.lib %BUILD_DEST%\lib\
copy zlib.lib %BUILD_DEST%\lib
copy zlib1.dll %BUILD_DEST%\bin\

nmake -f win32\Makefile_MD.msc clean

cd %ZLIB_DEST%
set PATH=%PATH%;%ProgramFiles%\7-zip
del ..\%PACKAGE_NAME%-x86-MD.7z
7z a ..\%PACKAGE_NAME%-x86-MD.7z *
cd %ZLIB_SRC%
rmdir /q /s %ZLIB_DEST%

echo.Finished!
pause
