#!/bin/sh
# Compiling libsndfile


d=${PWD}
bd=${d}/../../win32/build/32/md/
sd=${d}/../../sources/

export CFLAGS="-I/${bd}/include/ -m32"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/ -m32"
export PATH=${bd}/bin:${PATH}
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/libsndfile
./configure --prefix=${bd} --enable-static=no --enable-shared=yes
make clean
make V=1
make install
 
cd ${sd}/libsndfile/src
lib /machine:i386 /def:libsndfile-1.def

cd ..

rm ${bd}/bin/libsndfile-1.dll
rm ${bd}/lib/libsndfile-1.lib

cp src/.libs/libsndfile-1.dll ${bd}/bin/ 
cp src/libsndfile-1.lib ${bd}/lib/





