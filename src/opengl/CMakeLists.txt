include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(OPENGL_SRCS
    qgl.cpp
    qgl_x11.cpp
)

set(OPENGL_HEADERS
    qgl.h
)
install(FILES ${OPENGL_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

qt2_wrap_cpp(OPENGL_SRCS
    SOURCES ${OPENGL_SRCS}
)

qt2_wrap_moc(OPENGL_SRCS
    SOURCES qgl.h)

add_qt2_object_library(opengl
    SOURCES
        ${OPENGL_SRCS}
    COMPILE_DEFINITIONS
        ${QT_DEFINITIONS}
    )
