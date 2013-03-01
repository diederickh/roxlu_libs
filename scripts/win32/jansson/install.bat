@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd win32\vs2010\Output\Release
copy jansson.lib %DEST%\lib\
copy jansson.dll %DEST%\bin\
cd %PWD%
xcopy /y src\jansson.h %DEST%\include\
xcopy /y src\jansson_config.h %DEST%\include\
