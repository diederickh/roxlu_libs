@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd output\Release
copy libmp3lame.lib %DEST%\lib\
copy libmpghip-static.lib %DEST%\lib\
copy libmp3lame.dll %DEST%\bin\
cd %PWD%
xcopy /s include\*.h %DEST%\include\lame\
