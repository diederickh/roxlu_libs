#!/bin/sh
# Compiling autoconf

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}
export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"

cd ${sd}/autoconf
./configure --prefix=${bd} \
    --enable-static=yes \
    --enable-shared=yes

make clean 
make 
make install


