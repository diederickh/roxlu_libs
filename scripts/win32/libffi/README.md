 
 Using MingW + LibAV setup
 -------------------------
 * Recently I had setup my build environment for libav as described in my libav build
   documentation for windows. 
   IMPORTANT: I used my MingW shell, using the libav setup 

 * Copy build-x86.bat to scripts\sources\libffi
 * Open a MingW shell, goto scripts\sources\libffi
 * Execute build-x86.bat

 * Copy install-x86.bat to scripts\sources\libffi
 * Open a VS x86 console, goto scripts\sources\libffi and execcute install-x86.bat
 

 Based on hexchat info, which didn't work for me
 --------------------------------------------------
 * Make sure that you installed the mozilla build essentials to c:\mozilla-build\
   If not, download them from: http://ftp.mozilla.org/pub/mozilla.org/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe
   and install to c:\mozilla-build
 * Copy build-x86.bat to scripts\soucres\libffi\  
 * Open c:\mozilla-build\start-msvc10.bat
 * Go to c:\roxlu_libs\scripts\sources\libffi
 * Execute build-x86.bat

