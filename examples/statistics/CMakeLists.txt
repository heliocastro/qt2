set(STATISTICS_SRCS
    statistics.cpp main.cpp
    )

set(STATISTICS_HEADERS
    statistics.h
    )

qt2_wrap_moc(STATISTICS_SRCS SOURCES ${STATISTICS_HEADERS})

add_executable(statistics ${STATISTICS_SRCS})
target_link_libraries(statistics Qt2)
