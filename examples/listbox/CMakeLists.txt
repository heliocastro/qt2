set(LISTBOX_SRCS
    listbox.cpp
    main.cpp
    )

set(LISTBOX_HEADERS
    listbox.h
    )

qt2_wrap_moc(LISTBOX_SRCS SOURCES ${LISTBOX_HEADERS})

add_executable(listbox ${LISTBOX_SRCS})
target_link_libraries(listbox Qt::Qt2)
