set(FOREVER_SRCS
    forever.cpp
    )

set(FOREVER_HEADERS
    forever.h
    )

qt2_wrap_moc(FOREVER_SRCS SOURCES ${FOREVER_HEADERS})

add_executable(forever ${FOREVER_SRCS})
target_link_libraries(forever Qt::Qt2)
