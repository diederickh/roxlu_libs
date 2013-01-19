#!/bin/sh
# Compiling pkconfig
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/pkgconfig

export CFLAGS="-I/${bd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export LDFLAGS="${LDFLAGS} -framework Carbon"
export GLIB_CFLAGS="-I${bd}/include/ -I${bd}/include/glib-2.0/ -I${bd}/lib/glib-2.0/include/"
export GLIB_LIBS="-lglib-2.0 -lintl -liconv"

cd ${pwd}/pkgconfig
./configure --prefix=${bd} 
make clean
make V=1
make install


make clean
make V=1
make install



