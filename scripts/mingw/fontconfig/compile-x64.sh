#!/bin/sh
# Compiling fontconfig
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2
#
d=${PWD}
bd=${d}/../build
wbd=${d}/../../win32/build/32/md/
sd=${d}/../../sources/

export CFLAGS="-I/${wbd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${wbd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${wbd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${wbd}/include/ -I${wbd}/lib/libffi-3.0.11/include/"
export FREETYPE_CFLAGS="-I${wbd}/include/"
export FREETYPE_LIBS="-L${wbd}/lib/ -lfreetype"
#export LIBXML2_CFLAGS="-I${wbd}/include/"
#export LIBXML2_LIBS="-L${wbd}/lib/"


#     --enable-static=yes \n
cd ${sd}/fontconfig
#./configure --prefix=${bd} \
#    --enable-libxml2 \
#    --enable-shared=yes \
#    --enable-static=yes

./configure --prefix=${bd} --enable-libxml2 

#make clean
make V=1
make install




