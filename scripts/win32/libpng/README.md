
 * Open scripts\sources\libpng\projects\vstudio\vstudio.sln
 * Select "Release"
 * Remove the "zlib" project
 * Change some project properties for "libpng"

   Configuration Properties > C/C++ > General > Additional Include Directories:         
                 Remove: {zlibsrc}
                 Add:  .\..\..\..\..\..\win32\build\32\md\include\

   Configuration Properties > Linker > Additional Library Directories:
                 Add: .\..\..\..\..\..\win32\build\32\md\lib\

   
   Configuration Properties > Linker > Input: change zlib.lib to 'zdll.lib'

 * Build with VS
 * Copy install-x86.bat to scripts\sources\libpng\
 * Open a VS x86 console, go to scripts\sources\libpng\  and execute install-x86.bat