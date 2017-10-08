set(TEXTURE_SRCS
    gltexobj.cpp
    globjwin.cpp
    main.cpp
    )

set(TEXTURE_HEADERS
    gltexobj.h
    globjwin.h
    )

qt2_wrap_moc(TEXTURE_SRCS SOURCES ${TEXTURE_HEADERS})

add_executable(texture ${TEXTURE_SRCS})
target_link_libraries(texture
    Qt2
    OpenGL::GLU
    )
