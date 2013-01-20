@echo off
set INSTALL_DEST=%cd%\..\..\win32\build\32\md\
set OUTDIR=%cd%\build\win32\vs10\vs10\compiled\

xcopy /s %OUTDIR%\bin\* %INSTALL_DEST%\bin\
xcopy /s %OUTDIR%\include\* %INSTALL_DEST%\include\
xcopy /s %OUTDIR%\lib\* %INSTALL_DEST%\lib\

