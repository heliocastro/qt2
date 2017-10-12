set(HELPVIEWER_SRCS
    helpwindow.cpp
    main.cpp
    )

set(HELPVIEWER_HEADERS
    helpwindow.h
    )

qt2_wrap_moc(HELPVIEWER_SRCS SOURCES ${HELPVIEWER_HEADERS})

add_executable(helpviewer ${HELPVIEWER_SRCS})
target_link_libraries(helpviewer Qt::Qt2)
