# Try to find MOSEK
# Once done this will define
# MOSEK_FOUND - system has MOSEK
# MOSEK_INCLUDE_DIRS - the MOSEK include directories
# MOSEK_LIBRARIES - Link these to use MOSEK

set (MOSEK_HOME $ENV{MOSEK_HOME})

find_path(MOSEK_INCLUDE_DIR
         NAMES mosek.h
         PATHS "${MOSEK_HOME}/h"
         )

find_library(MOSEK_LIBRARY
             NAMES mosek64
             PATHS "${MOSEK_HOME}/bin"
             )

find_library(FUSION_LIBRARY
             NAMES fusion64
             PATHS "${MOSEK_HOME/bin}"
             )

include(FindPackageHandleStandardArgs)

if(MOSEK_INCLUDE_DIR)
    set(MOSEK_INCLUDE_DIRS "${MOSEK_INCLUDE_DIR}")
    set(MOSEK_LIBRARIES "${MOSEK_LIBRARY};${FUSION_LIBRARY}")
    set(MOSEK_FOUND TRUE)
    message("-- Found Mosek: TRUE")
else()
    message("-- Found Mosek: FALSE, Build without Mosek")
endif()

mark_as_advanced(MOSEK_HOME
                 MOSEK_INCLUDE_DIR
                 MOSEK_LIBRARY
                 FUSION_LIBRARY
                 )
