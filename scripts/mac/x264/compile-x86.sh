#!/bin/sh
# Compiling x264

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"


cd ${sd}/x264
./configure --prefix=${bd} \
    --enable-static \
    --enable-shared \
    --host=$(./config.guess |sed "s/x86_64/i386/g")

make clean 
make 
make install


