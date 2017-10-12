include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(ICONVIEW_SRCS
    qiconview.cpp
    )

qt2_wrap_cpp(TARGET iconview
    SOURCES qiconview.cpp)

qt2_wrap_moc(ICONVIEW_SRCS
    SOURCES qiconview.h)

set(ICONVIEW_HEADERS
    qiconview.h
)
install(FILES ${ICONVIEW_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

add_qt2_object_library(iconview
    SOURCES
        ${ICONVIEW_SRCS}
    COMPILE_DEFINITIONS
        ${QT_DEFINITIONS}
    )
