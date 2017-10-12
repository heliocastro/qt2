set(LISTVIEWS_SRCS
    listviews.cpp
    main.cpp
    )

set(LISTVIEWS_HEADERS
    listviews.h
    )

qt2_wrap_moc(LISTVIEWS_SRCS SOURCES ${LISTVIEWS_HEADERS})

add_executable(listviews ${LISTVIEWS_SRCS})
target_link_libraries(listviews Qt::Qt2)
