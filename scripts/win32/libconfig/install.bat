@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd Release
copy libconfig.lib %DEST%\lib\
copy libconfig.dll %DEST%\bin\
cd %PWD%
xcopy /s lib\libconfig.h %DEST%\include\
