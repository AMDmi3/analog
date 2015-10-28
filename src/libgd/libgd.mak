# Microsoft Developer Studio Generated NMAKE File, Based on libgd.dsp
!IF "$(CFG)" == ""
CFG=LIBGD - WIN32 Release
!MESSAGE Construction is not specified. Set default libgd - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "libgd - Win32 Release"
!MESSAGE Specified build mode "$(CFG)" is not correct.
!MESSAGE When running NMAKE, one can specify construction.
!MESSAGE Define macro on the command line. Example:
!MESSAGE 
!MESSAGE NMAKE /f "libgd.mak" CFG="libgd - WIN32 Release"
!MESSAGE 
!MESSAGE Selectable build mode:
!MESSAGE 
!MESSAGE "libgd - Win32 Release" (for "Win32 (x86) Static Library")
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

ALL : ".\libgd.lib"


CLEAN :
	-@erase "$(INTDIR)\gd.obj"
	-@erase "$(INTDIR)\gd_io.obj"
	-@erase "$(INTDIR)\gd_io_file.obj"
	-@erase "$(INTDIR)\gd_png.obj"
	-@erase "$(INTDIR)\gdfontf.obj"
	-@erase "$(INTDIR)\gdfonts.obj"
	-@erase "$(INTDIR)\gdtables.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase ".\libgd.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:".\libgd.lib" 
LIB32_OBJS= \
	"$(INTDIR)\gd.obj" \
	"$(INTDIR)\gd_io.obj" \
	"$(INTDIR)\gd_io_file.obj" \
	"$(INTDIR)\gd_png.obj" \
	"$(INTDIR)\gdfontf.obj" \
	"$(INTDIR)\gdfonts.obj" \
	"$(INTDIR)\gdtables.obj"

".\libgd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /Fp"$(INTDIR)\libgd.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c /I "..\zlib" /I "..\libpng"

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "libgd - Win32 Release"
SOURCE=.\gd.c

"$(INTDIR)\gd.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gd_io.c

"$(INTDIR)\gd_io.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gd_io_file.c

"$(INTDIR)\gd_io_file.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gd_png.c

"$(INTDIR)\gd_png.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gdfontf.c

"$(INTDIR)\gdfontf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gdfonts.c

"$(INTDIR)\gdfonts.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\gdtables.c

"$(INTDIR)\gdtables.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

