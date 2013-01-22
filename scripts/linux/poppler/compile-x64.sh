#!/bin/bash
# Compiling poppler

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-I${bd}/include/ -fpic"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig
export FONTCONFIG_CFLAGS="-I${bd}/include/"
export FONTCONFIG_LIBS="-lfontconfig"
export LIBS="-L${bd}/lib -lz"
export LIBCURL_CFLAGS=${CFLAGS}
export LIBCURL_LIBS="-L${bd}/libs/ -lcurl"
export FREETYPE_LIBS="-L${bd}/libs/ -lfreetype"
export LIBPNG_LIBS="-L${bd}/libs/ -lpng"
export LIBTIFF_CFLAGS=${CFLAGS}
export LIBTIFF_LIBS="-L${bd}/libs/ -ltiff"
export LIBJPEG_CFLAGS=${CFLAGS}

cd ${sd}/poppler
./configure --prefix=${bd} \
    --enable-static=yes \
    --enable-zlib \
    --enable-libcurl 
make clean
make V=1
make install




