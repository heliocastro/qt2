include("${CMAKE_CURRENT_LIST_DIR}/Qt2Targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Qt2Utils.cmake")

include(CMakeFindDependencyMacro)

find_dependency(Threads)

find_dependencies(PkgConfig)
pkg_search_module(XFT REQUIRED xft)
pkg_search_module(FONTCONFIG REQUIRED fontconfig)

find_dependencies(Freetype)

find_dependencies(ZLIB)

find_dependencies(PNG)

find_dependencies(MNG)

find_dependencies(JPEG)

find_dependencies(X11)
