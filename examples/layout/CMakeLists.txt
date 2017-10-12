set(LAYOUT_SRCS
    layout.cpp
    )

qt2_wrap_moc(LAYOUT_SRCS SOURCES ${LAYOUT_HEADERS})

add_executable(layout ${LAYOUT_SRCS})
target_link_libraries(layout Qt::Qt2)
