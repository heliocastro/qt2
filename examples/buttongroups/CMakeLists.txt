set(BUTTONGROUPS_SRCS
    buttongroups.cpp
    main.cpp
    )

set(BUTTONGROUPS_HEADERS
    buttongroups.h
    )

qt2_wrap_moc(BUTTONGROUPS_SRCS SOURCES ${BUTTONGROUPS_HEADERS})

add_executable(buttongroups ${BUTTONGROUPS_SRCS})
target_link_libraries(buttongroups Qt::Qt2)
