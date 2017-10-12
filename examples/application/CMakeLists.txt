set(APPLICATION_SRCS
    application.cpp
    main.cpp
    )

set(APPLICATION_HEADERS
    application.h
    )

qt2_wrap_moc(APPLICATION_SRCS SOURCES ${APPLICATION_HEADERS})

add_executable(application ${APPLICATION_SRCS})
target_link_libraries(application Qt::Qt2)
