set(CUSTOMLAYOUT_SRCS
    border.cpp
    card.cpp
    flow.cpp
    main.cpp
    )

set(CUSTOMLAYOUT_HEADERS
    border.h
    card.h
    flow.h
    )

qt2_wrap_moc(CUSTOMLAYOUT_SRCS SOURCES ${CUSTOMLAYOUT_HEADERS})

add_executable(customlayout ${CUSTOMLAYOUT_SRCS})
target_link_libraries(customlayout Qt::Qt2)
