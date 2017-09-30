
include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(XML_SRCS
    qxml.cpp
    qdom.cpp
    )

add_library(xml OBJECT ${XML_SRCS})

