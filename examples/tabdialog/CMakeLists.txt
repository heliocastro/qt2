set(TABDIALOG_SRCS
    main.cpp
    tabdialog.cpp
    )

set(TABDIALOG_HEADERS
    tabdialog.h
    )

qt2_wrap_moc(TABDIALOG_SRCS SOURCES ${TABDIALOG_HEADERS})

add_executable(tabdialog ${TABDIALOG_SRCS})
target_link_libraries(tabdialog Qt::Qt2)
