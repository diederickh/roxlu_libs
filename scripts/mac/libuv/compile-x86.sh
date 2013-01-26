#!/bin/sh
# Compiling libuv
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

if [ ! -d ${bd} ] ; then 
    mkdir ${bd}
fi

if [ ! -d ${bd}/lib ] ; then 
    mkdir ${bd}/lib
fi

export CFLAGS="-m32"
export CPPFLAGS=${CFLAGS}

cd ${sd}
cd libuv
make clean
make
cp -r include ${bd}/
cp  libuv.a ${bd}/lib/

