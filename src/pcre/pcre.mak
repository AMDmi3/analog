# Microsoft Developer Studio Generated NMAKE File, Based on pcre.dsp
!IF "$(CFG)" == ""
CFG=pcre - Win32 Release
!MESSAGE Construction is not specified. Set default pcre - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "pcre - Win32 Release"
!MESSAGE Specified build mode "$(CFG)" is not correct.
!MESSAGE When running NMAKE, one can specify construction.
!MESSAGE Define macro on the command line. Example:
!MESSAGE 
!MESSAGE NMAKE /f "pcre.mak" CFG="pcre - Win32 Debug"
!MESSAGE 
!MESSAGE Selectable build mode:
!MESSAGE 
!MESSAGE "pcre - Win32 Release" (for "Win32 (x86) Static Library")
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

ALL : ".\pcre.lib"


CLEAN :
	-@erase "$(INTDIR)\pcre.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase ".\pcre.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:".\pcre.lib" 
LIB32_OBJS= \
	"$(INTDIR)\pcre.obj"

".\pcre.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /Fp"$(INTDIR)\pcre.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "pcre - Win32 Release"
SOURCE=.\pcre.c

"$(INTDIR)\pcre.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

