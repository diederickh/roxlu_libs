#!/bin/sh
# Compiling pixman
# -----------------
set -x
d=${PWD}
bd=${d}/../build
wbd=${d}/../../win32/build/32/md/
sd=${d}/../../sources/


cd ${sd}/pixman

export CFLAGS="-I/${wbd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${wbd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${wbd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${wbd}/include/"
#export PNG_LIBS="-L${wbd}/lib/ -llibpng15"
#export PNG_CFLAGS="-I${wbd}/include"


#export PKG_CONFIG=${bd}/bin/pkg-config
#export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

#./configure --prefix=${bd} --enable-static=yes --enable-libpng --with-pic
./configure --prefix=${bd} --enable-shared=yes --with-pic
make clean
make V=1
make install




