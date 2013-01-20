 * Used libxml2-2.9.0
 * Go to the source directory of libxml2
 * Open: win32\VC10\libxml2.sln with VS
 * Select "Release"
 * Remove the iconv project
 * Change Configuration Properties > General > Configuration Type: Dynamic Library (.dll), for all projects

 ----------------------------------------

 CREATE MD DLL:
 --------------
 * Select "Release" in VS
 * Open libxml2 project properties and change:
   - Configuration Properties > General > Configuration Type: Dynamic Library (.dll) 
   - Configuration Properties > General > Target Name: libxml2_shared_MD.dll
   - Configuration Properties > C/C++ > Code Generation: Multi-Threaded DLL /MD
   - Configuration Properties > C/C++ > General > Additional Include Directories:  ..\..\..\..\win32\build\32\md\include\;..\..\include\;.\
   - Configuration Properties > Linker > General > Additional Library Directories: ..\..\..\..\win32\build\32\md\lib\
   - Configuration Properties > Linker > Input: iconv_import_MD.lib;ws2_32.lib
 * File > Save All
 * Exit VS
 * Reopen VS, select "Release" again 
 * Build using VS

 CREATE MT DLL (NEEDS TO BE UPDATED)
 --------------
 * Right click the solution name > Configuration Manager
   - In the "Active solution configuration" > <New...>
     - Name "Release MT"
     - Copy settings from: Release           
     - [ ] Create new project configuration (deselect)
 * Select "Release MT" in VS
 * Open libxml2 project properties and change:
   - Configuration Properties > General > Target Name: libxml2_shared_MT.dll
   - Configuration Properties > C/C++ > Code Generation: Multi-Threaded DLL /MT
   - Configuration Properties > Linker > Input: iconv_import_MT.lib;ws2_32.lib 

 ----------------------------------------

  * Finally run install.bat from this directory to install all necessary files to the correct location