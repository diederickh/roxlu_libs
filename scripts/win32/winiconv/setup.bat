:: run this from a VS x86 command prompt
@echo off
set SOURCES_DIR=%cd%\..\..\sources\
set PACKAGE_SOURCE_DIR=%SOURCES_DIR%\winiconv\

:: Extract 
set PWD=%cd%
cd %PACKAGE_SOURCE_DIR%
7z e win-iconv-0.0.4.7z

cd %PWD%
copy build-x86-MD.bat %PACKAGE_SOURCE_DIR%\
copy build-x86-MT.bat %PACKAGE_SOURCE_DIR%\


