set(TRAYICON_SRCS
    main.cpp
    trayicon.cpp
    trayicon_win.cpp
    )

set(TRAYICON_HEADERS
    trayicon.h
    )

qt2_wrap_moc(TRAYICON_SRCS SOURCES ${TRAYICON_HEADERS})

add_executable(trayicon ${TRAYICON_SRCS})
target_link_libraries(trayicon Qt2)
