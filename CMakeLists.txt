cmake_minimum_required(VERSION 3.2 FATAL_ERROR)

project(qt2
    VERSION 2.3.2
	LANGUAGES C CXX)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include(GNUInstallDirs)
include(Qt2WrapCpp)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_SHARED_LINKER_FLAGS "-Wl,--as-needed -Wl,--no-undefined")

option(ENABLE_XFT "Enable support for Anti-Aliased fonts." ON)
option(ENABLE_SESSION_MANAGEMENT "Support X Session Management, links in -lSM -lICE" ON)
option(ENABLE_THREAD_SUPPORT "Compile with Threading Support" ON)
option(SYSTEM_ZLIB "Use a zlib from the operating system" ON)
option(SYSTEM_LIBPNG "Use libpng from the operating system." ON)
option(SYSTEM_LIBMNG "Use libmng from the operating system." ON)
option(SYSTEM_JPEG "Use jpeglib from the operating system." ON)

find_package(PkgConfig REQUIRED)

if(ENABLE_XFT)
    find_package(Freetype REQUIRED)
endif()

if(ENABLE_SESSION_MANAGEMENT)
    pkg_search_module(SM REQUIRED sm)
endif()

if(ENABLE_THREAD_SUPPORT)
    find_package(Threads REQUIRED)
endif()

if(SYSTEM_ZLIB)
    find_package(ZLIB REQUIRED)
endif()

if(SYSTEM_LIBPNG)
    find_package(PNG REQUIRED)
endif()

if(SYSTEM_LIBMNG)
    pkg_search_module(MNG libmng REQUIRED)
endif()

if(SYSTEM_JPEG)
    find_package(JPEG REQUIRED)
endif()

find_package(X11 REQUIRED)

add_subdirectory(src)
