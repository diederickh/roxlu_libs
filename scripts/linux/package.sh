#!/bin/bash
d=${PWD}
p=${d}/packaged

if [ ! -d ${p} ] ; then 
    mkdir ${p} 
    mkdir ${p}/include/
    mkdir -p ${p}/lib/dynamic
    mkdir ${p}/lib/static
fi

cd ${d}/build
cp lib/*.a ${p}/lib/static
cp lib/*.so ${p}/lib/dynamic
cp -r include/ ${p}
cp -r lib/glib-2.0 ${p}/lib/
cp -r lib/pango ${p}/lib/




