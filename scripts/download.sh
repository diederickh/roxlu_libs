#!/bin/bash
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

# theora
if [ ! -d ${sd}/theora ] ; then
    mkdir ${sd}/theora
    cd ${sd}/theora
    svn co -r 18763 http://svn.xiph.org/trunk/theora .
fi

# icecast 
if [ ! -d ${sd}/icecast ] ; then 
    mkdir ${sd}/icecast
    cd ${sd}/icecast
    svn co -r 18773 http://svn.xiph.org/icecast/trunk/icecast .
fi

# libav 
if [ ! -d  ${sd}/libav ] ; then 
    mkdir ${sd}/libav
    cd ${sd}/libav
    git clone git://git.libav.org/libav.git .
    git reset --hard 822b0728f0e3c3ba60b20bd4fd971d5c4a3fe3e9
fi

# glfw 
if [ ! -d ${sd}/glfw ] ; then 
    mkdir ${sd}/glfw
    cd ${sd}/glfw/
    git clone https://github.com/elmindreda/glfw.git .
    git reset --hard 747b6d880563c0461df028d9e287652f16de7b17
fi

function download {
    dir=${1}
    url=${2}
    file=${3}
    extracted_dir=${4}
    is_bz=${5}
    dest=${sd}/${dir}

    if [ ! -d ${dest} ] ; then 
         mkdir ${dest}
         cd ${dest}
         curl -L ${url} -o ${file}
         if [ ${is_bz} -eq 0 ] ; then 
             tar -zxvf ${file}
         elif [ ${is_bz} -eq 1 ] ; then 
             tar -jxvf ${file}
         elif [ ${is_bz} -eq 2 ] ; then
             xz -d ${file}
             tar -xvf ${file%.xz}
         elif [ ${is_bz} -eq 3 ] ; then
             7z -e ${file}
         fi
         mv ${extracted_dir}/* .
    fi 
}


#download libjpeg "http://www.ijg.org/files/jpegsrc.v9.tar.gz" "jpegsrc.v9.tar.gz" "jpeg-9" # gives error with poppler + libtiff
download libjpeg "http://www.ijg.org/files/jpegsrc.v8d.tar.gz" "jpegsrc.v8d.tar.gz" "jpeg-8d" 0
download libtiff "ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz" "tiff-4.0.3.tar.gz" "tiff-4.0.3" 0
download libpng "http://prdownloads.sourceforge.net/libpng/libpng-1.5.13.tar.gz?download" "libpng-1.5.13.tar.gz" "libpng-1.5.13" 0
download libssl "http://www.openssl.org/source/openssl-1.0.1c.tar.gz" "openssl-1.0.1c.tar.gz" "openssl-1.0.1c" 0
download liblamemp3 "http://downloads.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz" "lame-3.99.tar.gz" "lame-3.99.5" 0
download yasm "http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz" "yasm-1.2.0.tar.gz" "yasm-1.2.0" 0
download pcre "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.32.tar.gz" "pcre-8.32.tar.gz" "pcre-8.32" 0
download curl "http://curl.haxx.se/download/curl-7.28.1.tar.gz" "curl-7.28.1.tar.gz" "curl-7.28.1" 0
download jansson "http://www.digip.org/jansson/releases/jansson-2.4.tar.gz" "jansson-2.4.tar.gz" "jansson-2.4" 0
download portaudio "http://portaudio.com/archives/pa_stable_v19_20111121.tgz"  "pa_stable_v19_20111121.tgz" "portaudio" 0
download libffi "ftp://sourceware.org/pub/libffi/libffi-3.0.11.tar.gz" "libffi-3.0.11.tar.gz" "libffi-3.0.11" 0 
download iconv "http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz" "libiconv-1.14.tar.gz" "libiconv-1.14" 0
download libtool "http://ftp.gnu.org/gnu/libtool/libtool-2.4.tar.gz" "libtool-2.4.tar.gz" "libtool-2.4" 0 
download autoconf "http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz" "autoconf-2.69.tar.gz" "autoconf-2.69" 0 
download automake "http://ftp.gnu.org/gnu/automake/automake-1.12.6.tar.gz" "automake-1.12.6.tar.gz" "automake-1.12.6" 0 
download gettext "http://ftp.gnu.org/pub/gnu/gettext/gettext-0.18.2.tar.gz" "gettext-0.18.2.tar.gz" "gettext-0.18.2" 0 
download gettext_win "http://winkde.org/pub/kde/ports/win32/repository-4.8/win32libs/gettext-vc100-0.18-src.tar.bz2" "gettext-vc100-0.18-src.tar.bz2" "gettext-vc100-0.18-src" 1
download glib "http://ftp.gnome.org/pub/gnome/sources/glib/2.34/glib-2.34.3.tar.xz" "glib-2.34.3.tar.xz" "glib-2.34.3" 2 
download pkgconfig "http://pkgconfig.freedesktop.org/releases/pkg-config-0.27.tar.gz" "pkg-config-0.27.tar.gz" "pkg-config-0.27" 0
download pixman "http://cairographics.org/releases/pixman-0.28.2.tar.gz" "pixman-0.28.2.tar.gz" "pixman-0.28.2" 0 
download freetype "http://download.savannah.gnu.org/releases/freetype/freetype-2.4.11.tar.gz" "freetype-2.4.11.tar.gz" "freetype-2.4.11" 0
download fontconfig "http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.10.2.tar.gz" "fontconfig-2.10.2.tar.gz" "fontconfig-2.10.2" 0
download zlib "http://zlib.net/zlib-1.2.7.tar.gz" "zlib-1.2.7.tar.gz" "zlib-1.2.7" 0
download poppler "http://poppler.freedesktop.org/poppler-0.22.0.tar.gz" "poppler-0.22.0.tar.gz" "poppler-0.22.0" 0
download harfbuzz "http://www.freedesktop.org/software/harfbuzz/release/harfbuzz-0.9.12.tar.bz2" "harfbuzz-0.9.12.tar.bz2" "harfbuzz-0.9.12" 1
download cairo "http://cairographics.org/releases/cairo-1.12.10.tar.xz" "cairo-1.12.10.tar.xz" "cairo-1.12.10" 2
download pango "http://ftp.gnome.org/pub/GNOME/sources/pango/1.32/pango-1.32.6.tar.xz" "pango-1.32.6.tar.xz" "pango-1.32.6" 2
download libogg "http://downloads.xiph.org/releases/ogg/libogg-1.3.0.tar.gz" "libogg-1.3.0.tar.gz" "libogg-1.3.0" 0
download libvorbis "http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.3.tar.gz" "libvorbis-1.3.3.tar.gz" "libvorbis-1.3.3" 0
download libspeex "http://downloads.xiph.org/releases/speex/speex-1.2rc1.tar.gz" "libspeex-1.2rc1.tar.gz" "speex-1.2rc1" 0
#download libxml "ftp://xmlsoft.org/libxml2/libxml2-2.9.0.tar.gz" "libxml2-2.9.0.tar.gz" "libxml2-2.9.0" 0  # has bug, but works on window, not on mac
download libxml "ftp://xmlsoft.org/libxml2/libxml2-2.8.0.tar.gz" "libxml2-2.8.0.tar.gz" "libxml2-2.8.0" 0 # used on windows
download libshout "http://downloads.xiph.org/releases/libshout/libshout-2.3.1.tar.gz" "libshout-2.3.1.tar.gz" "libshout-2.3.1" 0
download winiconv "https://github.com/downloads/hexchat/gtk-win32/win-iconv-0.0.4.7z" "win-iconv-0.0.4.7z" "win-iconv-0.0.4" 3
download m4 "http://ftp.gnu.org/gnu/m4/m4-1.4.16.tar.gz" "m4-1.4.16.tar.gz" "m4-1.4.16" 0
