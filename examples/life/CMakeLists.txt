set(LIFE_SRCS
    life.cpp
    lifedlg.cpp
    main.cpp
    )

set(LIFE_HEADERS
    life.h
    lifedlg.h
    )

qt2_wrap_moc(LIFE_SRCS SOURCES ${LIFE_HEADERS})

add_executable(life ${LIFE_SRCS})
target_link_libraries(life Qt::Qt2)
