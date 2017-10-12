cmake_minimum_required(VERSION 3.2 FATAL_ERROR)

project(qt2
    VERSION 2.3.2
	LANGUAGES C CXX)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include(GNUInstallDirs)
include(Qt2Utils)
include(Qt2InternalBuild)

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

option(ENABLE_XFT "Enable support for Anti-Aliased fonts." ON)
option(ENABLE_SESSION_MANAGEMENT "Support X Session Management, links in -lSM -lICE" ON)
option(ENABLE_THREAD_SUPPORT "Compile with Threading Support" ON)
option(ENABLE_OPENGL "Compile OpenGL module" ON)
option(SYSTEM_ZLIB "Use a zlib from the operating system" ON)
option(SYSTEM_LIBPNG "Use libpng from the operating system." ON)
option(SYSTEM_LIBMNG "Use libmng from the operating system." ON)
option(SYSTEM_JPEG "Use jpeglib from the operating system." ON)
option(BUILD_TUTORIAL "Build tutorials." ON)
option(BUILD_EXAMPLES "Build examples." ON)

find_package(PkgConfig REQUIRED)

if(ENABLE_XFT)
    pkg_search_module(XFT REQUIRED xft)
    pkg_search_module(FONTCONFIG REQUIRED fontconfig)
    find_package(Freetype REQUIRED)
endif()

if(ENABLE_SESSION_MANAGEMENT)
    pkg_search_module(SM REQUIRED sm)
endif()

if(ENABLE_THREAD_SUPPORT)
    find_package(Threads REQUIRED)
endif()

if(ENABLE_OPENGL)
    find_package(OpenGL REQUIRED)
    find_package(GLUT REQUIRED)
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
    pkg_search_module(XMU xmu REQUIRED)
endif()

find_package(X11 REQUIRED)

add_subdirectory(src)
add_subdirectory(tools)
add_subdirectory(doc)
if(BUILD_TUTORIAL)
    add_subdirectory(tutorial)
endif()

if(BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()
