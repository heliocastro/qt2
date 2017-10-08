set(BOX_SRCS
    glbox.cpp
    globjwin.cpp
    main.cpp
    )

set(BOX_HEADERS
    glbox.h
    globjwin.h
    )

qt2_wrap_moc(BOX_SRCS SOURCES ${BOX_HEADERS})

add_executable(box ${BOX_SRCS})
target_link_libraries(box Qt2)
