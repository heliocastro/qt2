# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

#.rst:
# FindMNG
# --------
#
# Find MNG
#
# Find the native MNG includes and library This module defines
#
# ::
#
#   MNG_INCLUDE_DIRS, where to find mng.h, etc.
#   MNG_LIBRARY, the libraries needed to use MNG.
#   MNG_FOUND, If false, do not try to use MNG.
#

find_package(PkgConfig REQUIRED)

# Try first pkgconfig
pkg_search_module(MNG libmng)

if(NOT MNG_FOUND)
    find_library(MNG_LIBRARY NAMES mng 
	    PATHS
	    	/usr/lib
	    	/usr/local/lib
		/usr/lib64
		/usr/local/lib64
		${CMAKE_INSTALL_PREFIX}
		${LIBMNG_LIBRARY_DIR}
		)
    find_path(MNG_INCLUDE_DIRS NAMES libmng.h
	    PATHS 
	    	/usr/include
	    	/usr/local/include
    		${CMAKE_INSTALL_FULL_INCLUDEDIR}
    		${LIBMNG_INCLUDE_DIR}
	    )
    if(NOT MNG_LIBRARY)
	    message(STATUS "Unable to find MNG development files on your system. MNG support will be disabled")
	    add_definitions(-DQT_NO_IMAGEIO_MNG)
	    set(MNG_LIBRARIES "")
    endif()
endif()

add_library(MNG::MNG UNKNOWN IMPORTED)
set_target_properties(MNG::MNG PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${MNG_INCLUDE_DIRS}")
set_property(TARGET MNG::MNG APPEND PROPERTY IMPORTED_LOCATION "${MNG_LIBRARY}")
