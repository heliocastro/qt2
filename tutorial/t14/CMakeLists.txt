set(T14_SRCS
    cannon.cpp
    gamebrd.cpp
    lcdrange.cpp
    main.cpp
    )

set(T14_HEADERS
    cannon.h
    gamebrd.h
    lcdrange.h
    )

qt2_wrap_moc(T14_SRCS SOURCES ${T14_HEADERS})

add_executable(t14 ${T14_SRCS})
target_link_libraries(t14 Qt::Qt2)
