
 * Open sources\pango\build\win32\vs10\pango.sl
 * Open the Property Manager
 * Right click on Pango > Debug | Win32 > pangoprop > Properties
 * Change: 
   Common Properties > User Macros:
                             PangoSeparateVS10DllSufix: "-1" 
                             GlibEtcInstallRoot: c:\roxlu_libs\scripts\win32\build\32\md\
   
   Common Properties > Linker > Input:
                             intl.lib > libint.lib (change this one)
                             zdll.lib (add this one) 


 * Select all projects in the Property Manager
 * Add Existing Property Sheet: c:\roxlu_libs\scripts\win32\roxlu_libs.props (created for glib)
 * View > Solution Explorer
 * Right click the "install" project > Set As StartUp Project
 * Right click "install" > rebuild


