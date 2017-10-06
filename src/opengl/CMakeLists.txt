include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(OPENGL_SRCS
    qgl.cpp
    qgl_x11.cpp
)

set(OPENGL_HEADERS
    qgl.h
)
install(FILES ${OPENGL_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

qt2_wrap_cpp(TARGET opengl
    SOURCES
    qgl.h
    qgl_x11.cpp
)

add_library(opengl OBJECT ${OPENGL_SRCS} ${MOC_OPENGL_SRCS})
add_dependencies(opengl moc_opengl)
