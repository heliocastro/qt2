set(T1_SRCS
    main.cpp
    )

qt2_wrap_moc(T1_SRCS SOURCES ${T1_HEADERS})

add_executable(t1 ${T1_SRCS})
target_link_libraries(t1 Qt::Qt2)
