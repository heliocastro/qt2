set(T2_SRCS
    main.cpp
    )

qt2_wrap_moc(T2_SRCS SOURCES ${T2_HEADERS})

add_executable(t2 ${T2_SRCS})
target_link_libraries(t2 Qt::Qt2)
