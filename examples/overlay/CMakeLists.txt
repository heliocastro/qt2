set(OVERLAY_SRCS
    glteapots.cpp
    globjwin.cpp
    main.cpp
    )

set(OVERLAY_HEADERS
    glteapots.h
    globjwin.h
    )

qt2_wrap_moc(OVERLAY_SRCS SOURCES ${OVERLAY_HEADERS})

add_executable(overlay ${OVERLAY_SRCS})
target_link_libraries(overlay
    Qt2
    OpenGL::GLU
    )
