#!/bin/sh
# Compiling glib

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-I/${bd}/include/ -m32"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/ -arch i386"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"

cd ${sd}/glib
./configure --prefix=${bd} \
    --enable-static=yes \
    --disable-selinux \
    --disable-modular-tests 

make clean
make V=1
make install



