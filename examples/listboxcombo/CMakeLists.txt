set(LISTBOXCOMBO_SRCS
    listboxcombo.cpp
    main.cpp
    )

set(LISTBOXCOMBO_HEADERS
    listboxcombo.h
    )

qt2_wrap_moc(LISTBOXCOMBO_SRCS SOURCES ${LISTBOXCOMBO_HEADERS})

add_executable(listboxcombo ${LISTBOXCOMBO_SRCS})
target_link_libraries(listboxcombo Qt::Qt2)
