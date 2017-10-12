set(T11_SRCS
    cannon.cpp
    lcdrange.cpp
    main.cpp
    )

set(T11_HEADERS
    cannon.h
    lcdrange.h
    )

qt2_wrap_moc(T11_SRCS SOURCES ${T11_HEADERS})

add_executable(t11 ${T11_SRCS})
target_link_libraries(t11 Qt::Qt2)
