@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd win32\VS2010\Win32\Release
copy libogg.lib %DEST%\lib\
copy libogg.dll %DEST%\bin\
cd %PWD%
xcopy /s include\ogg\*.h %DEST%\include\ogg\
