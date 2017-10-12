set(XMLQUOTES_SRCS
    main.cpp
    quoteparser.cpp
    richtext.cpp
    )

set(XMLQUOTES_HEADERS
    quoteparser.h
    richtext.h
    )

qt2_wrap_moc(XMLQUOTES_SRCS SOURCES ${XMLQUOTES_HEADERS})

add_executable(xmlquotes ${XMLQUOTES_SRCS})
target_link_libraries(xmlquotes Qt::Qt2)
