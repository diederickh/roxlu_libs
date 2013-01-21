#!/bin/sh
# Compiling libuv
# -----------------

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

if [ ! -d ${bd} ] ; then 
    mkdir ${bd}
fi

if [ ! -d ${bd}/lib ] ; then 
    mkdir ${bd}/lib
fi

export CFLAGS="-fpic"

cd ${sd}
cd libuv
make clean
make
cp -r include ${bd}/
cp  libuv.a ${bd}/lib/

