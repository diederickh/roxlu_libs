#!/bin/bash
# Compiling theora
# -----------------
# NOTE: we cannot use ASM because of a "bug" in the llvm compiler 
#
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

cd ${sd}/theora
./autogen.sh
./configure --prefix=${bd} \
    --enable-static=yes \
    --disable-asm 

make clean
make V=1
make install




