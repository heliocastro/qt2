set(SPLITTER_SRCS
    splitter.cpp
    )

qt2_wrap_moc(SPLITTER_SRCS SOURCES ${SPLITTER_HEADERS})

add_executable(splitter ${SPLITTER_SRCS})
target_link_libraries(splitter Qt::Qt2)
