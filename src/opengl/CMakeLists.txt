include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(OPENGL_SRCS
    qgl.cpp
    qgl_x11.cpp
)

qt2_wrap_cpp(TARGET opengl
    SOURCES
    qgl.h
    qgl_x11.cpp
)

add_library(opengl OBJECT ${OPENGL_SRCS} ${MOC_OPENGL_SRCS})
add_dependencies(opengl moc_opengl)
