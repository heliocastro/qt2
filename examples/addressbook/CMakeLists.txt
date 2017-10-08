set(ADDRESSBOOK_SRCS
    centralwidget.cpp
    main.cpp
    mainwindow.cpp
    )

set(ADDRESSBOOK_HEADERS
    centralwidget.h
    mainwindow.h
    )

qt2_wrap_moc(ADDRESSBOOK_SRCS SOURCES ${ADDRESSBOOK_HEADERS})

add_executable(addressbook ${ADDRESSBOOK_SRCS})
target_link_libraries(addressbook Qt2)
