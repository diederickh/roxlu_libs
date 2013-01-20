:: run this from a VS x86 command prompt
@echo off

set LIBPNG_SRC=%cd%
set LIBPNG_DEST=%cd%\..\..\win32\build\32\md
echo.Press return when ready to install!
pause

copy png.h %LIBPNG_DEST%\include
copy pngconf.h %LIBPNG_DEST%\include
copy pnglibconf.h %LIBPNG_DEST%\include
copy pngpriv.h %LIBPNG_DEST%\include
copy projects\vstudio\Release\libpng15.lib %LIBPNG_DEST%\lib
copy projects\vstudio\Release\libpng15.dll %LIBPNG_DEST%\bin

echo.Finished!
pause
