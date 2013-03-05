#!/bin/sh
# Compiling libconfig
# -----------------

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-I/${bd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/libconfig
./configure --prefix=${bd} --enable-static=yes --enable-shared=no
make clean
make V=1
make install




