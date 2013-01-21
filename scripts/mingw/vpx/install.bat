@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd win32\VS2010\libspeex\Release
copy libspeex.lib %DEST%\lib\
copy libspeex.dll %DEST%\bin\
cd %PWD%
xcopy /s include\speex\*.h %DEST%\include\speex\
