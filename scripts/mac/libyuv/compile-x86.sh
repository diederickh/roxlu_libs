#!/bin/sh
# Compiling libyuv

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}
export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"

cd ${sd}/libyuv/trunk/

if [ -d ${sd}/libyuv/trunk/xcodebuild ] ; then 
    rm -rf xcodebuild
fi

xcodebuild -project libyuv.xcodeproj -configuration Release 
cp ${sd}/libyuv/trunk/xcodebuild/Release/libyuv.a ${bd}/lib/
cp -r ${sd}/libyuv/trunk/include ${bd}/


