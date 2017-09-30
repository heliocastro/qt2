
include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(ICONVIEW_SRCS
    qiconview.cpp
    )

qt2_wrap_cpp(TARGET iconview
    SOURCES
    qiconview.cpp
    qiconview.h
    VERBOSE)

add_library(iconview OBJECT ${ICONVIEW_SRCS} ${MOC_ICONVIEW_SRCS})
add_dependencies(iconview moc_iconview)
