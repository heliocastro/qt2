set(T13_SRCS
    cannon.cpp
    gamebrd.cpp
    lcdrange.cpp
    main.cpp
    )

set(T13_HEADERS
    cannon.h
    gamebrd.h
    lcdrange.h
    )

qt2_wrap_moc(T13_SRCS SOURCES ${T13_HEADERS})

add_executable(t13 ${T13_SRCS})
target_link_libraries(t13 Qt::Qt2)
