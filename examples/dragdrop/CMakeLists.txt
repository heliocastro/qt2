set(DRAGDROP_SRCS
    dropsite.cpp
    main.cpp
    secret.cpp
    )

set(DRAGDROP_HEADERS
    dropsite.h
    secret.h
    )

qt2_wrap_moc(DRAGDROP_SRCS SOURCES ${DRAGDROP_HEADERS})

add_executable(dragdrop ${DRAGDROP_SRCS})
target_link_libraries(dragdrop Qt2)
