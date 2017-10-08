set(T10_SRCS
    cannon.cpp
    lcdrange.cpp
    main.cpp
    )

set(T10_HEADERS
    cannon.h
    lcdrange.h
    )

qt2_wrap_moc(T10_SRCS SOURCES ${T10_HEADERS})

add_executable(t10 ${T10_SRCS})
target_link_libraries(t10 Qt2)
