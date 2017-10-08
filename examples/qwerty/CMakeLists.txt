set(QWERTY_SRCS
    main.cpp
    qwerty.cpp
    )

set(QWERTY_HEADERS
    qwerty.h
    )

qt2_wrap_moc(QWERTY_SRCS SOURCES ${QWERTY_HEADERS})

add_executable(qwerty ${QWERTY_SRCS})
target_link_libraries(qwerty Qt2)
