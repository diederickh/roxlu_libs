set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd win32\VS2010\Win32\Release
cp libogg.lib %DEST%\lib\
cp libogg.dll %DEST%\bin\
cd %PWD%
xcopy /s include\ogg\*.h %DEST%\include\ogg\