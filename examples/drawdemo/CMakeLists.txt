set(DRAWDEMO_SRCS
    drawdemo.cpp
    )

qt2_wrap_cpp(DRAWDEMO_SRCS SOURCES drawdemo.cpp)

add_executable(drawdemo ${DRAWDEMO_SRCS})
target_link_libraries(drawdemo Qt::Qt2)
