#!/bin/sh
# Compiling zlib
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-I/${bd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/zlib
./configure --prefix=${bd} --archs="-arch x86_64" --static
make clean
make V=1
make install




