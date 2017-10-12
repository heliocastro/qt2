set(EXAMPLE_CANVAS_SRCS
    canvas.cpp main.cpp
    )

set(CANVAS_HEADERS
    canvas.h
    )

qt2_wrap_moc(EXAMPLE_CANVAS_SRCS SOURCES ${CANVAS_HEADERS})

add_executable(ex_canvas ${EXAMPLE_CANVAS_SRCS})
target_link_libraries(ex_canvas Qt::Qt2)
set_target_properties(ex_canvas PROPERTIES OUTPUT_FILENAME canvas)
