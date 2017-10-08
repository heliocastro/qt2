set(ROT13_SRCS
    rot13.cpp
    )

set(ROT13_HEADERS
    rot13.h
    )

qt2_wrap_moc(ROT13_SRCS SOURCES ${ROT13_HEADERS})

add_executable(rot13 ${ROT13_SRCS})
target_link_libraries(rot13 Qt2)
