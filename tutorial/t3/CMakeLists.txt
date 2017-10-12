set(T3_SRCS
    main.cpp
    )

qt2_wrap_moc(T3_SRCS SOURCES ${T3_HEADERS})

add_executable(t3 ${T3_SRCS})
target_link_libraries(t3 Qt::Qt2)
