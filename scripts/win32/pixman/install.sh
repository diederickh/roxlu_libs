#!/bin/sh
dest=${PWD}/../../win32/build/32/md/

if [ ! -d ${dest}/include/pixman-1 ] ; then 
    mkdir ${dest}/include/pixman-1 
fi    
set -x
cp pixman/release/pixman-1.lib ${dest}/lib/
cp pixman/pixman.h ${dest}/include/pixman-1/
cp pixman/pixman-version.h ${dest}/include/pixman-1/
