
  * Create directories:
    c:\roxlu_libs\tools\perl\x86
    c:\roxlu_libs\tools\nasm\

  * Install Perl x86, from https://github.com/hexchat/gtk-win32/tree/master/gettext-runtime
    Install into c:\roxlu_libs\tools\perl\x86\  ( NOTE: this path is used by the build script )
    
  * Install nasm, from http://nasm.us/pub/nasm/releasebuilds/2.10.07/win32/nasm-2.10.07-installer.exe
    Install into c:\roxlu_libs\tools\nasm\   ( NOTE: this path is used by the build script )

  * Copy build-x86.bat to scripts\sources\libssl\
  * Open a VS x86 command prompt
  * Run build-x86.bat, to compile and install the files to the build install directory.



  Issues
  -----------------
  - When the files aren't installed to the destination directory, try to remove the "libssl" directory, 
    then execute the download.sh script again (from msys shell) and exectute the procedure again. Sometimes
    the temp install dir can't be removed because it's opened in another winodws, if so, install fails.