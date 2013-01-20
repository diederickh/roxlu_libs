:: run this from a VS x86 command prompt
@echo off

set PWD=%cd%
set SOURCES_DIR=%cd%\..\..\sources\
set PACKAGE_SOURCE_DIR=%SOURCES_DIR%\gettext_win

cp gettext-runtime.patch %PACKAGE_SOURCE_DIR%
cd %PACKAGE_SOURCE_DIR%

::copy Makefile_MD.msc %PACKAGE_SOURCE_DIR%\win32\
::copy Makefile_MT.msc %PACKAGE_SOURCE_DIR%\win32\
::copy build-x86.bat %PACKAGE_SOURCE_DIR%\

cd gettext-runtime
cd intl
cp intl.def BACKUP_intl_def && mv intl.def intl_wrong_le.def && tr --delete '\r' < intl_wrong_le.def > intl.def

cd %PACKAGE_SOURCE_DIR%
patch -p1 -i gettext-runtime.patch

cd %PWD%
cp build-x86.bat %PACKAGE_SOURCE_DIR%