# - Try to find PNC
#  Once done this will define
#  PNC_FOUND - System has Gurobi
#  PNC_INCLUDE_DIRS - The Gurobi include directories
#  PNC_LIBRARIES - The libraries needed to use Gurobi

find_path(PNC_INCLUDE_DIR
          NAMES Configuration.h
          PATHS "/usr/local/include/PnC"
          )

      find_library(PNC_LIBRARY
                  NAMES DracoPnC
                  PATHS "/usr/local/lib"
                  )

include(FindPackageHandleStandardArgs)

if(PNC_INCLUDE_DIR)
    set(PNC_INCLUDE_DIRS "${PNC_INCLUDE_DIR}" )
    set(PNC_LIBRARIES "${PNC_LIBRARY}" )
    set(PNC_FOUND TRUE)
    message("-- Found Gurobi: TRUE")
else()
    message("-- Found Gurobi: FALSE, Build without Gurobi")
endif()

mark_as_advanced( PNC_INCLUDE_DIR
                  PNC_LIBRARY )
