#!/bin/sh
# Compiling libyuv
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/libyuv/trunk/

xcodebuild -project libyuv.xcodeproj -configuration Release 
cp ${sd}/libyuv/trunk/xcodebuild/Release/libyuv.a ${bd}/lib/
cp -r ${sd}/libyuv/trunk/include ${bd}/


