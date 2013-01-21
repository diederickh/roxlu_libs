#!/bin/bash
# Compiling curl
# -----------------
set -x
d=${PWD}
bd=${d}/../build/
sd=${d}/../../sources/

export CFLAGS="-I${bd}/include/ -fpic"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig
export SSL_LIBS="-lcrypto -lssl -ldl"
export SSL_LDFLAGS-"-L${bd}/lib"
export SSL_CFLAGS="-I${bd}/include/"
export LIBS="-lcrypto -lssl -ldl"

cd ${sd}/curl

./configure --prefix=${bd} \
    --with-ssl \
    --enable-static=yes \
    --enable-shared=yes \
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


