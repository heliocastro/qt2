set(DRAWLINES_SRCS
    connect.cpp
    )

qt2_wrap_moc(DRAWLINES_SRCS SOURCES ${DRAWLINES_HEADERS})

add_executable(drawlines ${DRAWLINES_SRCS})
target_link_libraries(drawlines Qt::Qt2)
