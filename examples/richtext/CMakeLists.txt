set(RICHTEXT_SRCS
    main.cpp
    richtext.cpp
    )

set(RICHTEXT_HEADERS
    richtext.h
    )

qt2_wrap_moc(RICHTEXT_SRCS SOURCES ${RICHTEXT_HEADERS})

add_executable(richtext ${RICHTEXT_SRCS})
target_link_libraries(richtext Qt2)
