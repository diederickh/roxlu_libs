@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd win32\VS2010\Win32\Release
copy libtheora.lib %DEST%\lib\
copy libtheora.dll %DEST%\bin\
cd %PWD%
xcopy /s include\theora\*.h %DEST%\include\theora\
