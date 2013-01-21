set D=%CD%
set DEST=%d%\..\..\win32\build\32\md\
cd build\bin\Win32\Release
copy Release\lib\libuv.lib %DEST%\lib\
copy *.dll %DEST%\bin\
xcopy /s include %DEST%\include 



