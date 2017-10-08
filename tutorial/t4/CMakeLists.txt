set(T4_SRCS
    main.cpp
    )

qt2_wrap_moc(T4_SRCS SOURCES ${T4_HEADERS})

add_executable(t4 ${T4_SRCS})
target_link_libraries(t4 Qt2)
