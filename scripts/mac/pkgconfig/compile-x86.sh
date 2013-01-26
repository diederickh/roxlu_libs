#!/bin/sh
# Compiling pkconfig

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/pkgconfig

export CFLAGS="-I/${bd}/include/ -m32"
export CXXFLAGS="-I/${bd}/include/ -m32"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/ -arch i386"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export LDFLAGS="${LDFLAGS} -framework Carbon"
export GLIB_CFLAGS="-I${bd}/include/ -I${bd}/include/glib-2.0/ -I${bd}/lib/glib-2.0/include/"
export GLIB_LIBS="-lglib-2.0 -lintl -liconv"

./configure --prefix=${bd}
make clean
make V=1
make install




