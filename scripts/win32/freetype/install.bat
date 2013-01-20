:: run this from a VS x86 command prompt
@echo off
set SOURCES_DIR=%cd%\..\..\sources\
set PACKAGE_SOURCE_DIR=%SOURCES_DIR%\freetype\
set BUILD_DEST=%cd%\..\..\win32\build\32\

:: Copy files
set pwd=%cd%
cd %PACKAGE_SOURCE_DIR%

copy objs\win32\vc2010\freetype_MD.lib %BUILD_DEST%\md\lib\freetype.lib
xcopy /s include %BUILD_DEST%\md\include\
cd %pwd%

:: copy objs\win32\vc2010\freetype_static_MT.lib %BUILD_DEST%\lib\



