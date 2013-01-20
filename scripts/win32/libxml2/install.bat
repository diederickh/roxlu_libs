:: run this from a VS x86 command prompt
@echo off
set SOURCES_DIR=%cd%\..\..\sources\
set PACKAGE_SOURCE_DIR=%SOURCES_DIR%\libxml
set BUILD_DEST=%cd%\..\..\win32\build\32\md

:: Copy files
set pwd=%cd%
cd %PACKAGE_SOURCE_DIR%
cd win32\VC10\Release
copy libxml2.lib %BUILD_DEST%\lib\
copy libxml2.dll %BUILD_DEST%\bin\


cd %PACKAGE_SOURCE_DIR%
copy include\win32config.h %BUILD_DEST%\include\
copy include\wsockcompat.h %BUILD_DEST%\include\
xcopy /s include\libxml\*.h %BUILD_DEST%\include\libxml\

cd %pwd%




