
Compiling x264  on Windows 
=================================
1) Open a MinGW shell and execute build.sh

UPDATE:
-------
These steps need to be done manually for now:
- Don't use x264-*.dll.a that is created by MinGW as it seems to be corrupted
- We need to create our own import library which is quite easy to do:
  I used this page: http://www.omnicode.com/qa.jsp?id=94
  



