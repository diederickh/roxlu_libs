set D=%CD%
set DEST=%d%\..\..\win32\build\32\md\
cd build\bin\Win32\Release
copy *.lib %DEST%\lib\
copy *.dll %DEST%\bin\
cd %D%
copy include\portaudio.h %DEST%\include\


