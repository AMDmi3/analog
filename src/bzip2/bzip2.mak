# Microsoft Developer Studio Generated NMAKE File, Based on bzip2.dsp
!IF "$(CFG)" == ""
CFG=bzip2 - Win32 Release
!MESSAGE Construction is not specified. Set default libgd - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "bzip2 - Win32 Release"
!MESSAGE Specified build mode "$(CFG)" is not correct.
!MESSAGE When running NMAKE, one can specify construction.
!MESSAGE Define macro on the command line. Example:
!MESSAGE 
!MESSAGE NMAKE /f "bzip2.mak" CFG="bzip2 - Win32 Release"
!MESSAGE 
!MESSAGE Selectable build mode:
!MESSAGE 
!MESSAGE "bzip2 - Win32 Release" (for "Win32 (x86) Static Library")
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

ALL : ".\bzip2.lib"


CLEAN :
	-@erase "$(INTDIR)\blocksort.obj"
	-@erase "$(INTDIR)\bzlib.obj"
	-@erase "$(INTDIR)\compress.obj"
	-@erase "$(INTDIR)\crctable.obj"
	-@erase "$(INTDIR)\decompress.obj"
	-@erase "$(INTDIR)\huffman.obj"
	-@erase "$(INTDIR)\randtable.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase ".\bzip2.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:".\bzip2.lib" 
LIB32_OBJS= \
	"$(INTDIR)\blocksort.obj" \
	"$(INTDIR)\bzlib.obj" \
	"$(INTDIR)\compress.obj" \
	"$(INTDIR)\crctable.obj" \
	"$(INTDIR)\decompress.obj" \
	"$(INTDIR)\huffman.obj" \
	"$(INTDIR)\randtable.obj"

".\bzip2.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /Fp"$(INTDIR)\bzip2.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "bzip2 - Win32 Release"
SOURCE=.\blocksort.c

"$(INTDIR)\blocksort.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\bzlib.c

"$(INTDIR)\bzlib.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\compress.c

"$(INTDIR)\compress.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\crctable.c

"$(INTDIR)\crctable.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\decompress.c

"$(INTDIR)\decompress.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\huffman.c

"$(INTDIR)\huffman.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\randtable.c

"$(INTDIR)\randtable.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

