set(SHAREDBOX_SRCS
    glbox.cpp
    globjwin.cpp
    main.cpp
    )

set(SHAREDBOX_HEADERS
    glbox.h
    globjwin.h
    )

qt2_wrap_moc(SHAREDBOX_SRCS SOURCES ${SHAREDBOX_HEADERS})

add_executable(sharedbox ${SHAREDBOX_SRCS})
target_link_libraries(sharedbox Qt::Qt2 OpenGL::GL)
