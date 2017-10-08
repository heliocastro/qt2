set(DRAWDEMO_SRCS
    drawdemo.cpp
    )

qt2_wrap_cpp(TARGET drawdemo SOURCES drawdemo.cpp)

add_executable(drawdemo ${DRAWDEMO_SRCS})
add_dependencies(drawdemo moc_drawdemo)
target_link_libraries(drawdemo Qt2)
