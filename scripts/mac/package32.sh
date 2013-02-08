#!/bin/sh

pd=${PWD}/packaged32/

if [ ! -d ${pd} ] ; then 
    mkdir ${pd}
    mkdir ${pd}/lib/static
    mkdir ${pd}/lib/dynamic
    mkdir ${pd}/include
fi

cd build32
cp lib/*.a ${pd}/lib/static/
cp lib/*.dylib ${pd}/lib/dynamic/
cp -r lib/glib-2.0 ${pd}/lib/static/
cp -r lib/glib-2.0 ${pd}/lib/dynamic/
cp -r lib/libffi-3.0.11 ${pd}/lib/static/
cp -r lib/libffi-3.0.11 ${pd}/lib/dynamic/
mkdir -p ${pd}/lib/static/pango/1.8.0/modules/
mkdir -p ${pd}/lib/dynamic/pango/1.8.0/modules/
cp lib/pango/1.8.0/modules/*.a ${pd}/lib/static/pango/1.8.0/modules/
cp lib/pango/1.8.0/modules/*.dylib ${pd}/lib/dylib/pango/1.8.0/modules/
cp -r include/ ${pd}/include

