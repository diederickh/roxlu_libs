#!/bin/bash
#
# Compiling zlib
# -----------------

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-I/${bd}/include/ -fpic"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/zlib
./configure --prefix=${bd} --64 --static
make clean
make V=1
make install




