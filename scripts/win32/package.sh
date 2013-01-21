#!/bin/sh
d=${PWD}
pd=${d}/packaged/
sd=${d}/build/32/md/
echo ${pd}
if [ ! -d ${pd} ] ; then 
    mkdir ${pd}
    mkdir ${pd}/lib
    mkdir ${pd}/bin
    mkdir ${pd}/include 
fi


cd ${sd}
cp bin/*.dll ${pd}/bin/
cp lib/*.lib ${pd}/lib/
cp lib/*.a ${pd}/lib/
cp -r lib/engines ${pd}/lib/engines
cp -r lib/glib-2.0/ ${pd}/lib/glib-2.0
