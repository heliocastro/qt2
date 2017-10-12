set(TOOLTIP_SRCS
    main.cpp
    tooltip.cpp
    )

set(TOOLTIP_HEADERS
    tooltip.h
    )

qt2_wrap_moc(TOOLTIP_SRCS SOURCES ${TOOLTIP_HEADERS})

add_executable(tooltip ${TOOLTIP_SRCS})
target_link_libraries(tooltip Qt::Qt2)
