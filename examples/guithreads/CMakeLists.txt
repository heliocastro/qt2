set(GUITHREADS_SRCS
    main.cpp
    )

qt2_wrap_moc(GUITHREADS_SRCS SOURCES ${GUITHREADS_HEADERS})

add_executable(guithreads ${GUITHREADS_SRCS})
target_compile_definitions(guithreads PUBLIC QT_THREAD_SUPPORT)
target_link_libraries(guithreads Qt::Qt2)
