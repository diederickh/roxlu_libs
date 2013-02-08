#!/bin/sh
# Compiling libtiff
#
# Building with jpeg supports gives an error in jmorecfg.h:263
#
#
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-I${bd}/include/ -m32" 
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

#    --disable-old-jpeg \
#    --disable-jpeg

cd ${sd}/libtiff
./configure --prefix=${bd} \
    --enable-static=yes \
    --with-zlib-include-dir=${bd}/include/ \
    --with-zlib-lib-dir=${bd}/lib/ \
    --with-jpeg-lib-dir=${bd}/lib/ \
    --with-jpeg-include-dir=${bd}/include/   

make clean
make V=1
make install




