#!/bin/sh
# Compiling libconfig


d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-I/${bd}/include/ -m32 -arch i386"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/ -m32"
export PATH=${bd}/bin:${PATH}
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/libconfig
./configure --prefix=${bd} --enable-static=yes --enable-shared=no
make clean
make V=1
make install




