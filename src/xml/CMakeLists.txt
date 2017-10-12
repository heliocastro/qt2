include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(XML_SRCS
    qxml.cpp
    qdom.cpp
    )

set(XML_HEADERS
    qdom.h
    qxml.h
)
install(FILES ${XML_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

add_qt2_object_library(xml
    SOURCES
        ${XML_SRCS}
    COMPILE_DEFINITIONS
        ${QT_DEFINITIONS}
    COMPILE_OPTIONS
        -Wno-format-security
    )
