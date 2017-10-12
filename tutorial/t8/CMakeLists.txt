set(T8_SRCS
    cannon.cpp
    lcdrange.cpp
    main.cpp
    )

set(T8_HEADERS
    cannon.h
    lcdrange.h
    )

qt2_wrap_moc(T8_SRCS SOURCES ${T8_HEADERS})

add_executable(t8 ${T8_SRCS})
target_link_libraries(t8 Qt::Qt2)
