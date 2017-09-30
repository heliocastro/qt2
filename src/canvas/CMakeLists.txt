include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(CANVAS_SRCS
    qcanvas.cpp
    )

qt2_wrap_cpp(TARGET canvas
    SOURCES
    qcanvas.cpp
    qcanvas.h
)

add_library(canvas OBJECT ${CANVAS_SRCS} ${MOC_CANVAS_SRCS})
add_dependencies(canvas moc_canvas)
