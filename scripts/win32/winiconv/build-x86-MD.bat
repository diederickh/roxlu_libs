:: run this from a VS x86 command prompt
@echo off

SET PACKAGE_NAME=win-iconv-0.0.4

set BUILD_DEST=%cd%\..\..\win32\build\32\md\
set ICONV_SRC=%cd%
set ICONV_DEST=%cd%-x86
del CMakeCache.txt
rmdir /q /s CMakeFiles
cmake -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%ICONV_DEST% -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS_RELEASE="/MD"
nmake clean
nmake
echo.Press return when ready to install!
pause

nmake install

copy iconv.h %BUILD_DEST%\include\
copy iconv.lib %BUILD_DEST%\lib\iconv.lib
copy iconv.dll %BUILD_DEST%\bin\iconv.dll
copy win_iconv.exe %BUILD_DEST%\bin\

nmake clean

echo.Finished!
pause
