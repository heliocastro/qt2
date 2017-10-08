set(CURSOR_SRCS
    cursor.cpp
    )

qt2_wrap_moc(CURSOR_SRCS SOURCES ${CURSOR_HEADERS})

add_executable(cursor ${CURSOR_SRCS})
target_link_libraries(cursor Qt2)
