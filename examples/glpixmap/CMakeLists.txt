set(GLPIXMAP_SRCS
    glbox.cpp
    globjwin.cpp
    main.cpp
    )

set(GLPIXMAP_HEADERS
    glbox.h
    globjwin.h
    )

qt2_wrap_moc(GLPIXMAP_SRCS SOURCES ${GLPIXMAP_HEADERS})

add_executable(glpixmap ${GLPIXMAP_SRCS})
target_link_libraries(glpixmap Qt::Qt2 OpenGL::GL)
