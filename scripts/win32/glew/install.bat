set D=%CD%
set DEST=%d%\..\..\win32\build\32\md\
copy lib\*.lib %DEST%\lib\
copy bin\*.dll %DEST%\bin\
xcopy /s include\GL\*.h %DEST%\include\GL\
