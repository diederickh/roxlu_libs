:: run this from a VS x86 command prompt
@echo off

SET PACKAGE_NAME=gettext-runtime-0.18

set PWD=%cd%

:: if not exist %PWD%\compile_with_cmake ( 
::    mkdir compile_with_cmake
:: )

:: cd %PWD%\compile_with_cmake

set GETTEXT_SRC=%PWD%
set GETTEXT_DEST=%PWD%\..\..\win32\build\32\md\
del CMakeCache.txt
rmdir /q /s CMakeFiles
cmake -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%GETTEXT_DEST% -DCMAKE_BUILD_TYPE=Release -DICONV_INCLUDE_DIR=%GETTEXT_SRC%\..\..\win32\build\32\md\include\ -DICONV_LIBRARIES=%GETTEXT_SRC%\..\..\win32\build\32\md\lib\iconv.lib -DCMAKE_C_FLAGS_RELEASE="/MD" 
nmake clean
nmake VERBOSE=1
echo.Press return when ready to install!
pause

nmake install
# mkdir %GETTEXT_DEST%\share
# mkdir %GETTEXT_DEST%\share\doc
# mkdir %GETTEXT_DEST%\share\doc\gettext
# copy COPYING %GETTEXT_DEST%\share\doc\gettext
# nmake clean
# 
# cd %GETTEXT_DEST%
# set PATH=%PATH%;%ProgramFiles%\7-zip
# del ..\%PACKAGE_NAME%-x86.7z
# 7z a ..\%PACKAGE_NAME%-x86.7z *
# cd %GETTEXT_SRC%
# rmdir /q /s %GETTEXT_DEST%
# 
echo.Finished!
pause
