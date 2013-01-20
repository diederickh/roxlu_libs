:: run this from a VS x86 command prompt
@echo off

set OPENSSL_SRC=%cd%
set OPENSSL_DEST=%cd%\tmp_ssl_install
set INSTALL_DEST=%cd%\..\..\win32\build\32\md\
set PERL_PATH=c:\roxlu_libs\tools\perl\x86\bin\
set NASM_PATH=c:\roxlu_libs\tools\nasm
set INCLUDE=%INCLUDE%;%OPENSSL_SRC%\..\..\win32\build\32\md\include
set LIB=%LIB%;%OPENSSL_SRC%\..\..\win32\build\md\lib
set PATH=%PATH%;%PERL_PATH%;%NASM_PATH%;%OPENSSL_SRC%\..\..\win32\build\md\bin

perl Configure VC-WIN32 enable-camellia zlib-dynamic --openssldir=./
call ms\do_nasm
@echo off
nmake -f ms\ntdll.mak vclean
nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak test
perl mk-ca-bundle.pl -n
echo.Press return when ready to install!
pause

:: hack to have . as openssldir which is required for having OpenSSL load cert.pem from .
move include include-orig
nmake -f ms\ntdll.mak install
rmdir /q /s %OPENSSL_DEST%
mkdir %OPENSSL_DEST%
move bin %OPENSSL_DEST%
move include %OPENSSL_DEST%
move lib %OPENSSL_DEST%

mkdir %OPENSSL_DEST%\share
mkdir %OPENSSL_DEST%\share\doc
mkdir %OPENSSL_DEST%\share\doc\openssl
move openssl.cnf %OPENSSL_DEST%\share\openssl.cnf.example
move include-orig include
move cert.pem %OPENSSL_DEST%\bin
copy LICENSE %OPENSSL_DEST%\share\doc\openssl\COPYING

xcopy /s %OPENSSL_DEST%\include\* %INSTALL_DEST%\include\
xcopy /s %OPENSSL_DEST%\lib\* %INSTALL_DEST%\lib\
xcopy /s %OPENSSL_DEST%\bin\* %INSTALL_DEST%\bin\

echo.Finished!
pause
