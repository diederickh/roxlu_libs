#!/bin/sh
# Compiling gettext

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}
export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"


cd ${sd}/gettext
./configure --prefix=${bd} 

make clean 
make 
make install


