#!/bin/bash
# Compiling pkconfig

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CXXFLAGS="-fpic"
export CFLAGS="-I${bd}/include/ -fpic"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig
export GLIB_CFLAGS="-I${bd}/include/ -I${bd}/include/glib-2.0/ -I${bd}/lib/glib-2.0/include/"
export GLIB_LIBS="-lglib-2.0 -lintl -liconv"

cd ${sd}/pkgconfig

./configure --prefix=${bd} 
make clean
make V=1
make install

