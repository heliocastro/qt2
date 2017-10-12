set(DESKTOP_SRCS
    desktop.cpp
    )

qt2_wrap_moc(DESKTOP_SRCS SOURCES ${DESKTOP_HEADERS})

add_executable(desktop ${DESKTOP_SRCS})
target_link_libraries(desktop Qt::Qt2)
