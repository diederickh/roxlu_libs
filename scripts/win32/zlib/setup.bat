:: run this from a VS x86 command prompt
@echo off
set SOURCES_DIR=%cd%\..\..\sources\
set PACKAGE_SOURCE_DIR=%SOURCES_DIR%\zlib\

copy Makefile_MD.msc %PACKAGE_SOURCE_DIR%\win32\
copy Makefile_MT.msc %PACKAGE_SOURCE_DIR%\win32\
copy build-x86-MT.bat %PACKAGE_SOURCE_DIR%\
copy build-x86-MD.bat %PACKAGE_SOURCE_DIR%\

