@echo off
set INSTALL_DEST=%cd%\..\..\win32\build\32\md\
set OUTDIR=i686-pc-mingw32
copy %OUTDIR%\include\ffi.h %INSTALL_DEST%\include\
copy %OUTDIR%\include\ffitarget.h %INSTALL_DEST%\include\
copy %OUTDIR%\.libs\libffi_convenience.lib %INSTALL_DEST%\lib\libffi.lib
copy %OUTDIR%\.libs\libffi-6.dll %INSTALL_DEST%\bin\