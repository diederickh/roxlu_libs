#!/bin/sh

pd=${PWD}/packaged/

if [ ! -d ${pd} ] ; then 
    mkdir ${pd}
    mkdir ${pd}/lib
    mkdir ${pd}/include
fi

cd build
cp lib/*.a ${pd}/lib/
cp -r lib/glib-2.0 ${pd}/lib/
cp -r lib/libffi-3.0.11 ${pd}/lib/
mkdir  -p ${pd}/lib/pango/1.8.0/modules/
cp lib/pango/1.8.0/modules/*.a ${pd}/lib/pango/1.8.0/modules/
cp -r include/ ${pd}/include

