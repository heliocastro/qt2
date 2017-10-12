set(MAIL_SRCS
    composer.cpp
    main.cpp
    smtp.cpp
    )

set(MAIL_HEADERS
    composer.h
    smtp.h
    )

qt2_wrap_moc(MAIL_SRCS SOURCES ${MAIL_HEADERS})

add_executable(mail ${MAIL_SRCS})
target_link_libraries(mail Qt::Qt2)
