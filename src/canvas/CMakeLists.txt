include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(CANVAS_SRCS
    qcanvas.cpp
    )

qt2_wrap_cpp(TARGET canvas
    SOURCES
    qcanvas.cpp
)

qt2_wrap_moc(CANVAS_SRCS
    SOURCES qcanvas.h)

set(CANVAS_HEADERS
    qcanvas.h
)
install(FILES ${CANVAS_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

add_library(canvas OBJECT ${CANVAS_SRCS} ${MOC_CANVAS_SRCS})
add_dependencies(canvas moc_canvas)
