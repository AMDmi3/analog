# Microsoft Developer Studio Generated NMAKE File, Based on analog.dsp
#
# Makefile for MSVC++6.0 (might work for other earlier version)
# Compile Conditions :
# Warning      : Level 3
# Optimization : program size
# Used Library : kernel32.lib user32.lib wsock32.lib
# To compile, type on the command line in the src directory
# "nmake /f analog.mak".
#
# 2004/02/04: matsuki@tokyo-kasei.ac.jp
#
!IF "$(CFG)" == ""
CFG=analog - Win32 Release
!MESSAGE Construction is not specified. Set default analog - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "analog - Win32 Release"
!MESSAGE Specified build mode "$(CFG)" is not correct.
!MESSAGE When running NMAKE, one can specify construction.
!MESSAGE Define macro on the command line. Example:
!MESSAGE 
!MESSAGE NMAKE /f "analog.mak" CFG="analog - Win32 Release"
!MESSAGE 
!MESSAGE Selectable build mode:
!MESSAGE 
!MESSAGE "analog - Win32 Release" (for "Win32 (x86) Console Application")
!MESSAGE 
!ERROR Ineffective construction is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe
OUTDIR=.\Release
INTDIR=.\Release

!IF "$(RECURSE)" == "0" 

ALL : ".\analog.exe"

!ELSE 

ALL : "zlib - Win32 Release" "unzip - Win32 Release" "pcre - Win32 Release" "libpng - Win32 Release" "libgd - Win32 Release" "bzip2 - Win32 Release" ".\analog.exe"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"bzip2 - Win32 ReleaseCLEAN" "libgd - Win32 ReleaseCLEAN" "libpng - Win32 ReleaseCLEAN" "pcre - Win32 ReleaseCLEAN" "unzip - Win32 ReleaseCLEAN" "zlib - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\alias.obj"
	-@erase "$(INTDIR)\analog.obj"
	-@erase "$(INTDIR)\analog.res"
	-@erase "$(INTDIR)\cache.obj"
	-@erase "$(INTDIR)\dates.obj"
	-@erase "$(INTDIR)\globals.obj"
	-@erase "$(INTDIR)\hash.obj"
	-@erase "$(INTDIR)\init.obj"
	-@erase "$(INTDIR)\init2.obj"
	-@erase "$(INTDIR)\input.obj"
	-@erase "$(INTDIR)\outcro.obj"
	-@erase "$(INTDIR)\outhtml.obj"
	-@erase "$(INTDIR)\outlatex.obj"
	-@erase "$(INTDIR)\outplain.obj"
	-@erase "$(INTDIR)\output.obj"
	-@erase "$(INTDIR)\output2.obj"
	-@erase "$(INTDIR)\outxhtml.obj"
	-@erase "$(INTDIR)\outxml.obj"
	-@erase "$(INTDIR)\process.obj"
	-@erase "$(INTDIR)\settings.obj"
	-@erase "$(INTDIR)\sort.obj"
	-@erase "$(INTDIR)\tree.obj"
	-@erase "$(INTDIR)\utils.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\win32.obj"
	-@erase ".\analog.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib wsock32.lib .\bzip2\bzip2.lib .\unzip\unzip.lib .\pcre\pcre.lib .\libpng\libpng.lib .\libgd\libgd.lib .\zlib\zlib.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\analog.pdb" /machine:I386 /out:".\analog.exe" 
LINK32_OBJS= \
	"$(INTDIR)\alias.obj" \
	"$(INTDIR)\analog.obj" \
	"$(INTDIR)\cache.obj" \
	"$(INTDIR)\dates.obj" \
	"$(INTDIR)\globals.obj" \
	"$(INTDIR)\hash.obj" \
	"$(INTDIR)\init.obj" \
	"$(INTDIR)\init2.obj" \
	"$(INTDIR)\input.obj" \
	"$(INTDIR)\outcro.obj" \
	"$(INTDIR)\outhtml.obj" \
	"$(INTDIR)\outlatex.obj" \
	"$(INTDIR)\outplain.obj" \
	"$(INTDIR)\output.obj" \
	"$(INTDIR)\output2.obj" \
	"$(INTDIR)\outxhtml.obj" \
	"$(INTDIR)\outxml.obj" \
	"$(INTDIR)\process.obj" \
	"$(INTDIR)\settings.obj" \
	"$(INTDIR)\sort.obj" \
	"$(INTDIR)\tree.obj" \
	"$(INTDIR)\utils.obj" \
	"$(INTDIR)\win32.obj" \
	"$(INTDIR)\analog.res" \
	".\bzip2\bzip2.lib" \
	".\libgd\libgd.lib" \
	".\libpng\libpng.lib" \
	".\pcre\pcre.lib" \
	".\unzip\unzip.lib" \
	".\zlib\zlib.lib"

".\analog.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

CPP_PROJ=/nologo /ML /W3 /GX /O1 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\analog.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC_PROJ=/l 0x809 /fo"$(INTDIR)\analog.res" /i "..\pcre" /i "..\libgd" /d "NDEBUG" 

!IF "$(CFG)" == "analog - Win32 Release"
SOURCE=.\alias.c

"$(INTDIR)\alias.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\analog.c

"$(INTDIR)\analog.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\cache.c

"$(INTDIR)\cache.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\dates.c

"$(INTDIR)\dates.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\globals.c

"$(INTDIR)\globals.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\hash.c

"$(INTDIR)\hash.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\init.c

"$(INTDIR)\init.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\init2.c

"$(INTDIR)\init2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\input.c

"$(INTDIR)\input.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\outcro.c

"$(INTDIR)\outcro.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\outhtml.c

"$(INTDIR)\outhtml.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\outlatex.c

"$(INTDIR)\outlatex.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\outplain.c

"$(INTDIR)\outplain.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\output.c

"$(INTDIR)\output.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\output2.c

"$(INTDIR)\output2.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\outxhtml.c

"$(INTDIR)\outxhtml.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\outxml.c

"$(INTDIR)\outxml.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\process.c

"$(INTDIR)\process.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\settings.c

"$(INTDIR)\settings.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\sort.c

"$(INTDIR)\sort.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\tree.c

"$(INTDIR)\tree.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\utils.c

"$(INTDIR)\utils.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\win32.c

"$(INTDIR)\win32.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\resource\analog.rc

"$(INTDIR)\analog.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x809 /fo"$(INTDIR)\analog.res" /i "..\pcre" /i "..\libgd" /i "..\resource" /d "NDEBUG" $(SOURCE)


!IF  "$(CFG)" == "analog - Win32 Release"

"bzip2 - Win32 Release" : 
   cd ".\bzip2"
   $(MAKE) /$(MAKEFLAGS) /F ".\bzip2.mak" CFG="bzip2 - Win32 Release" 
   cd ".."

"bzip2 - Win32 ReleaseCLEAN" : 
   cd ".\bzip2"
   $(MAKE) /$(MAKEFLAGS) /F ".\bzip2.mak" CFG="bzip2 - Win32 Release" RECURSE=1 CLEAN 
   cd ".."

"libgd - Win32 Release" : 
   cd ".\libgd"
   $(MAKE) /$(MAKEFLAGS) /F ".\libgd.mak" CFG="libgd - Win32 Release" 
   cd ".."

"libgd - Win32 ReleaseCLEAN" : 
   cd ".\libgd"
   $(MAKE) /$(MAKEFLAGS) /F ".\libgd.mak" CFG="libgd - Win32 Release" RECURSE=1 CLEAN 
   cd ".."

"libpng - Win32 Release" : 
   cd ".\libpng"
   $(MAKE) /$(MAKEFLAGS) /F ".\libpng.mak" CFG="libpng - Win32 Release" 
   cd ".."

"libpng - Win32 ReleaseCLEAN" : 
   cd ".\libpng"
   $(MAKE) /$(MAKEFLAGS) /F ".\libpng.mak" CFG="libpng - Win32 Release" RECURSE=1 CLEAN 
   cd ".."

"pcre - Win32 Release" : 
   cd ".\pcre"
   $(MAKE) /$(MAKEFLAGS) /F ".\pcre.mak" CFG="pcre - Win32 Release" 
   cd ".."

"pcre - Win32 ReleaseCLEAN" : 
   cd ".\pcre"
   $(MAKE) /$(MAKEFLAGS) /F ".\pcre.mak" CFG="pcre - Win32 Release" RECURSE=1 CLEAN 
   cd ".."

"unzip - Win32 Release" : 
   cd ".\unzip"
   $(MAKE) /$(MAKEFLAGS) /F ".\unzip.mak" CFG="unzip - Win32 Release" 
   cd ".."

"unzip - Win32 ReleaseCLEAN" : 
   cd ".\unzip"
   $(MAKE) /$(MAKEFLAGS) /F ".\unzip.mak" CFG="unzip - Win32 Release" RECURSE=1 CLEAN 
   cd ".."

"zlib - Win32 Release" : 
   cd ".\zlib"
   $(MAKE) /$(MAKEFLAGS) /F ".\zlib.mak" CFG="zlib - Win32 Release" 
   cd ".."

"zlib - Win32 ReleaseCLEAN" : 
   cd ".\zlib"
   $(MAKE) /$(MAKEFLAGS) /F ".\zlib.mak" CFG="zlib - Win32 Release" RECURSE=1 CLEAN 
   cd ".."

!ENDIF 


!ENDIF 

