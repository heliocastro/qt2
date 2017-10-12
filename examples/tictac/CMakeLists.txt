set(TICTAC_SRCS
    main.cpp
    tictac.cpp
    )

set(TICTAC_HEADERS
    tictac.h
    )

qt2_wrap_moc(TICTAC_SRCS SOURCES ${TICTAC_HEADERS})

add_executable(tictac ${TICTAC_SRCS})
target_link_libraries(tictac Qt::Qt2)
