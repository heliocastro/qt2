set(HELLO_SRCS
    hello.cpp
    main.cpp
    )

set(HELLO_HEADERS
    hello.h
    )

qt2_wrap_moc(HELLO_SRCS SOURCES ${HELLO_HEADERS})

add_executable(hello ${HELLO_SRCS})
target_link_libraries(hello Qt::Qt2)
