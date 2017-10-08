set(ACTION_SRCS
    application.cpp
    main.cpp
    )

set(ACTION_HEADERS
    application.h
    )

qt2_wrap_moc(ACTION_SRCS SOURCES ${ACTION_HEADERS})

add_executable(action ${ACTION_SRCS})
target_link_libraries(action Qt2)
