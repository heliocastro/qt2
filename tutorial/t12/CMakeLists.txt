set(T12_SRCS
    cannon.cpp
    lcdrange.cpp
    main.cpp
    )

set(T12_HEADERS
    cannon.h
    lcdrange.h
    )

qt2_wrap_moc(T12_SRCS SOURCES ${T12_HEADERS})

add_executable(t12 ${T12_SRCS})
target_link_libraries(t12 Qt::Qt2)
