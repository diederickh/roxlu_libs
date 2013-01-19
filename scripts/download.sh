#!/bin/sh
#
#
d=${PWD}
sd=${d}/sources/

if [ ! -d ${sd} ] ; then 
    mkdir ${sd}
fi

# lib uv
if [ ! -d ${sd}/libuv ] ; then
    mkdir ${sd}/libuv
    cd ${sd}/libuv
    git clone https://github.com/joyent/libuv.git .
    git reset --hard 92fb84b751e18f032c02609467f44bfe927b80c5
fi

#lib vpx
if [ ! -d ${sd}/libvpx ] ; then 
    mkdir ${sd}/libvpx
    cd ${sd}/libvpx
    git clone http://git.chromium.org/webm/libvpx.git .
    git reset --hard 23963021205ba27872aea11f4f11f53bec77e03d
fi

# x264
if [ ! -d ${sd}/x264 ] ; then 
    mkdir ${sd}/x264
    cd ${sd}/x264 
    git clone git://git.videolan.org/x264.git .
    git reset --hard bc13772e21d0e61dea6ba81d0d387604b5b360df
fi

# depot_tools (for libyuv)
if [ ! -d ${sd}/libyuv ] ; then 
    mkdir ${sd}/libyuv
    cd ${sd}/libyuv

    mkdir depot_tools
    cd depot_tools
    git clone https://git.chromium.org/chromium/tools/depot_tools.git .

    cd ${sd}/libyuv
    export PATH=${sd}/libyuv/depot_tools:${PATH}
    gclient config http://libyuv.googlecode.com/svn/trunk
    gclient sync
    
    ${sd}/libyuv/trunk/tools/clang/scripts/update.sh
fi

function download {
    dir=${1}
    url=${2}
    file=${3}
    extracted_dir=${4}
    dest=${sd}/${dir}

    if [ ! -d ${dest} ] ; then 
         mkdir ${dest}
         cd ${dest}
         curl -L ${url} -o ${file}
         tar -zxvf ${file}
         mv ${extracted_dir}/* .
    fi 
}


download libjpeg "http://www.ijg.org/files/jpegsrc.v9.tar.gz" "jpegsrc.v9.tar.gz" "jpeg-9"
download libpng "http://prdownloads.sourceforge.net/libpng/libpng-1.5.13.tar.gz?download" "libpng-1.5.13.tar.gz" "libpng-1.5.13"
download libssl "http://www.openssl.org/source/openssl-1.0.1c.tar.gz" "openssl-1.0.1c.tar.gz" "openssl-1.0.1c"
download liblamemp3 "http://downloads.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz" "lame-3.99.tar.gz" "lame-3.99.5" 
download yasm "http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz" "yasm-1.2.0.tar.gz" "yasm-1.2.0"
download pcre "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.32.tar.gz" "pcre-8.32.tar.gz" "pcre-8.32" 
download curl "http://curl.haxx.se/download/curl-7.28.1.tar.gz" "curl-7.28.1.tar.gz" "curl-7.28.1"
download jansson "http://www.digip.org/jansson/releases/jansson-2.4.tar.gz" "jansson-2.4.tar.gz" "jansson-2.4"
download portaudio "http://portaudio.com/archives/pa_stable_v19_20111121.tgz"  "pa_stable_v19_20111121.tgz" "portaudio"
download libffi "ftp://sourceware.org/pub/libffi/libffi-3.0.11.tar.gz" "libffi-3.0.11.tar.gz" "libffi-3.0.11"
download iconv "http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz" "libiconv-1.14.tar.gz" "libiconv-1.14"
download libtool "http://ftp.gnu.org/gnu/libtool/libtool-2.4.tar.gz" "libtool-2.4.tar.gz" "libtool-2.4"
download autoconf "http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz" "autoconf-2.69.tar.gz" "autoconf-2.69"
download automake "http://ftp.gnu.org/gnu/automake/automake-1.12.6.tar.gz" "automake-1.12.6.tar.gz" "automake-1.12.6"
download gettext "http://ftp.gnu.org/pub/gnu/gettext/gettext-0.18.2.tar.gz" "gettext-0.18.2.tar.gz" "gettext-0.18.2"
download glib "http://ftp.gnome.org/pub/gnome/sources/glib/2.34/glib-2.34.3.tar.xz" "glib-2.34.3.tar.xz" "glib-2.34.3"
download pkgconfig "http://pkgconfig.freedesktop.org/releases/pkg-config-0.27.tar.gz" "pkg-config-0.27.tar.gz" "pkg-config-0.27"
download pixman "http://cairographics.org/releases/pixman-0.28.2.tar.gz" "pixman-0.28.2.tar.gz" "pixman-0.28.2"
download freetype "http://download.savannah.gnu.org/releases/freetype/freetype-2.4.11.tar.gz" "freetype-2.4.11.tar.gz" "freetype-2.4.11"
download fontconfig "http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.10.2.tar.gz" "fontconfig-2.10.2.tar.gz" "fontconfig-2.10.2"
download poppler "http://poppler.freedesktop.org/poppler-0.22.0.tar.gz" "poppler-0.22.0.tar.gz" "poller-0.22.0"
