set(SCRIBBLE_SRCS
    main.cpp
    scribble.cpp
    )

set(SCRIBBLE_HEADERS
    scribble.h
    )

qt2_wrap_moc(SCRIBBLE_SRCS SOURCES ${SCRIBBLE_HEADERS})

add_executable(scribble ${SCRIBBLE_SRCS})
target_link_libraries(scribble Qt2)
