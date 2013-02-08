#!/bin/sh
# Compiling curl
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"

cd ${sd}/curl

./configure --prefix=${bd} \
    --with-ssl=${bd} \
    --enable-static=yes \
    --enable-shared=no \
    --disable-ftp \
    --disable-ldaps \
    --disable-ldap \
    --disable-rtsp \
    --disable-dict \
    --disable-telnet \
    --disable-tftp \
    --disable-pop3 \
    --disable-imap \
    --disable-smtp \
    --disable-gopher \
    --without-axtls \
    --disable-ares 
make clean
make 
make install


