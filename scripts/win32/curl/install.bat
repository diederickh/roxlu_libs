@echo off
set DEST=%cd%\..\..\win32\build\32\md\
set PWD=%cd%
cd builds
cd libcurl-vc10-x86-release-dll-zlib-dll-ipv6-sspi-spnego-winssl
xcopy /s bin %DEST%\bin
xcopy /s include %DEST%\include
xcopy /x lib %DEST%\lib