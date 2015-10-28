# Microsoft Developer Studio Generated NMAKE File, Based on unzip.dsp
!IF "$(CFG)" == ""
CFG=unzip - Win32 Release
!MESSAGE Construction is not specified. Set default unzip - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "unzip - Win32 Release"
!MESSAGE Specified build mode "$(CFG)" is not correct.
!MESSAGE When running NMAKE, one can specify construction.
!MESSAGE Define macro on the command line. Example:
!MESSAGE 
!MESSAGE NMAKE /f "unzip.mak" CFG="unzip - Win32 Release"
!MESSAGE 
!MESSAGE Selectable build mode:
!MESSAGE 
!MESSAGE "unzip - Win32 Release" (for "Win32 (x86) Static Library")
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

ALL : ".\unzip.lib"


CLEAN :
	-@erase "$(INTDIR)\ioapi.obj"
	-@erase "$(INTDIR)\unzip.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase ".\unzip.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:".\unzip.lib" 
LIB32_OBJS= \
	"$(INTDIR)\ioapi.obj" \
	"$(INTDIR)\unzip.obj"

".\unzip.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "NOUNCRYPT" /Fp"$(INTDIR)\unzip.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "unzip - Win32 Release"
SOURCE=.\ioapi.c

"$(INTDIR)\ioapi.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\unzip.c

"$(INTDIR)\unzip.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

