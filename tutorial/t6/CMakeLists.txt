set(T6_SRCS
    main.cpp
    )

qt2_wrap_moc(T6_SRCS SOURCES ${T6_HEADERS})

add_executable(t6 ${T6_SRCS})
target_link_libraries(t6 Qt2)
