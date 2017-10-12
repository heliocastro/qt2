set(CHECKLISTS_SRCS
    checklists.cpp
    main.cpp
    )

set(CHECKLISTS_HEADERS
    checklists.h
    )

qt2_wrap_moc(CHECKLISTS_SRCS SOURCES ${CHECKLISTS_HEADERS})

add_executable(checklists ${CHECKLISTS_SRCS})
target_link_libraries(checklists Qt::Qt2)
