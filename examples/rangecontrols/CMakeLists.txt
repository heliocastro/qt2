set(RANGECONTROLS_SRCS
    main.cpp
    rangecontrols.cpp
    )

set(RANGECONTROLS_HEADERS
    rangecontrols.h
    )

qt2_wrap_moc(RANGECONTROLS_SRCS SOURCES ${RANGECONTROLS_HEADERS})

add_executable(rangecontrols ${RANGECONTROLS_SRCS})
target_link_libraries(rangecontrols Qt::Qt2)
