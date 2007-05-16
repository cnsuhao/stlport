# -*- makefile -*- Time-stamp: <04/03/22 22:17:22 ptr>
# $Id$

DBG_SUFFIX = d
STLDBG_SUFFIX = stl$(DBG_SUFFIX)

# default prefix: none
!ifndef LIB_NAME_PREFIX
LIB_NAME_PREFIX =
!endif

!ifdef STLP_BUILD_LIB_MOTIF
LIB_NAME_SUFFIX = _$(STLP_BUILD_LIB_MOTIF).$(MAJOR).$(MINOR)
!else
LIB_NAME_SUFFIX = .$(MAJOR).$(MINOR)
!endif

!ifdef STLP_BUILD_FORCE_STATIC_RUNTIME
LIB_TYPE = _x
!else
LIB_TYPE =
!endif

# Shared libraries:

SO_NAME_BASE    = $(LIB_NAME_PREFIX)$(LIBNAME)$(LIB_TYPE)$(LIB_NAME_SUFFIX)
SO_NAME         = $(SO_NAME_BASE).$(SO)
LIB_NAME        = $(SO_NAME_BASE).$(LIBEXT)
EXP_NAME        = $(SO_NAME_BASE).$(EXP)
PDB_NAME        = $(SO_NAME_BASE).pdb
RES_NAME        = $(LIBNAME).res
MANIFEST_NAME	= $(SO_NAME).manifest

SO_NAME_OUT     = $(OUTPUT_DIR)\$(SO_NAME)
LIB_NAME_OUT    = $(OUTPUT_DIR)\$(LIB_NAME)
EXP_NAME_OUT    = $(OUTPUT_DIR)\$(EXP_NAME)
PDB_NAME_OUT    = $(OUTPUT_DIR)\$(PDB_NAME)
RES_NAME_OUT    = $(OUTPUT_DIR)\$(RES_NAME)
MANIFEST_NAME_OUT	= $(OUTPUT_DIR)\$(MANIFEST_NAME)

SO_NAME_DBG_BASE = $(LIB_NAME_PREFIX)$(LIBNAME)$(DBG_SUFFIX)$(LIB_TYPE)$(LIB_NAME_SUFFIX)
SO_NAME_DBG     = $(SO_NAME_DBG_BASE).$(SO)
LIB_NAME_DBG    = $(SO_NAME_DBG_BASE).$(LIBEXT)
EXP_NAME_DBG    = $(SO_NAME_DBG_BASE).$(EXP)
PDB_NAME_DBG    = $(SO_NAME_DBG_BASE).pdb
MANIFEST_NAME_DBG    = $(SO_NAME_DBG).manifest

SO_NAME_OUT_DBG     = $(OUTPUT_DIR_DBG)\$(SO_NAME_DBG)
LIB_NAME_OUT_DBG    = $(OUTPUT_DIR_DBG)\$(LIB_NAME_DBG)
EXP_NAME_OUT_DBG    = $(OUTPUT_DIR_DBG)\$(EXP_NAME_DBG)
PDB_NAME_OUT_DBG    = $(OUTPUT_DIR_DBG)\$(PDB_NAME_DBG)
RES_NAME_OUT_DBG    = $(OUTPUT_DIR_DBG)\$(RES_NAME)
MANIFEST_NAME_OUT_DBG	= $(OUTPUT_DIR_DBG)\$(MANIFEST_NAME_DBG)

SO_NAME_STLDBG_BASE = $(LIB_NAME_PREFIX)$(LIBNAME)$(STLDBG_SUFFIX)$(LIB_TYPE)$(LIB_NAME_SUFFIX)
SO_NAME_STLDBG      = $(SO_NAME_STLDBG_BASE).$(SO)
LIB_NAME_STLDBG     = $(SO_NAME_STLDBG_BASE).$(LIBEXT)
EXP_NAME_STLDBG     = $(SO_NAME_STLDBG_BASE).$(EXP)
PDB_NAME_STLDBG     = $(SO_NAME_STLDBG_BASE).pdb
MANIFEST_NAME_STLDBG     = $(SO_NAME_STLDBG).manifest

SO_NAME_OUT_STLDBG     = $(OUTPUT_DIR_STLDBG)\$(SO_NAME_STLDBG)
LIB_NAME_OUT_STLDBG    = $(OUTPUT_DIR_STLDBG)\$(LIB_NAME_STLDBG)
EXP_NAME_OUT_STLDBG    = $(OUTPUT_DIR_STLDBG)\$(EXP_NAME_STLDBG)
PDB_NAME_OUT_STLDBG    = $(OUTPUT_DIR_STLDBG)\$(PDB_NAME_STLDBG)
RES_NAME_OUT_STLDBG    = $(OUTPUT_DIR_STLDBG)\$(RES_NAME)
MANIFEST_NAME_OUT_STLDBG    = $(OUTPUT_DIR_STLDBG)\$(MANIFEST_NAME_STLDBG)

# Static libraries:
!ifdef STLP_BUILD_LIB_MOTIF
LIB_A_NAME_SUFFIX = _$(STLP_BUILD_LIB_MOTIF)
!else
LIB_A_NAME_SUFFIX =
!endif

!ifdef STLP_BUILD_FORCE_DYNAMIC_RUNTIME
LIB_A_TYPE = _statix
!else
LIB_A_TYPE = _static
!endif

A_NAME_BASE = $(LIB_NAME_PREFIX)$(LIBNAME)$(LIB_A_TYPE)$(LIB_A_NAME_SUFFIX)
A_NAME = $(A_NAME_BASE).$(ARCH)
A_NAME_OUT = $(OUTPUT_DIR_A)\$(A_NAME)
A_PDB_NAME = $(A_NAME_BASE).pdb
A_PDB_NAME_OUT = $(OUTPUT_DIR_A)\$(A_PDB_NAME)

A_NAME_DBG_BASE = $(LIB_NAME_PREFIX)$(LIBNAME)$(DBG_SUFFIX)$(LIB_A_TYPE)$(LIB_A_NAME_SUFFIX)
A_NAME_DBG = $(A_NAME_DBG_BASE).$(ARCH)
A_NAME_OUT_DBG = $(OUTPUT_DIR_A_DBG)\$(A_NAME_DBG)
A_PDB_NAME_DBG = $(A_NAME_DBG_BASE).pdb
A_PDB_NAME_OUT_DBG = $(OUTPUT_DIR_A_DBG)\$(A_PDB_NAME_DBG)

A_NAME_STLDBG_BASE = $(LIB_NAME_PREFIX)$(LIBNAME)$(STLDBG_SUFFIX)$(LIB_A_TYPE)$(LIB_A_NAME_SUFFIX)
A_NAME_STLDBG = $(A_NAME_STLDBG_BASE).$(ARCH)
A_NAME_OUT_STLDBG = $(OUTPUT_DIR_A_STLDBG)\$(A_NAME_STLDBG)
A_PDB_NAME_STLDBG = $(A_NAME_STLDBG_BASE).pdb
A_PDB_NAME_OUT_STLDBG = $(OUTPUT_DIR_A_STLDBG)\$(A_PDB_NAME_STLDBG)
