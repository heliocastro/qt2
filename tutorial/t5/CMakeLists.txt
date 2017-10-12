set(T5_SRCS
    main.cpp
    )

qt2_wrap_moc(T5_SRCS SOURCES ${T5_HEADERS})

add_executable(t5 ${T5_SRCS})
target_link_libraries(t5 Qt::Qt2)
