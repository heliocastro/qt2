set(DIRVIEW_SRCS
    dirview.cpp
    main.cpp
    )

set(DIRVIEW_HEADERS
    dirview.h
    )

qt2_wrap_moc(DIRVIEW_SRCS SOURCES ${DIRVIEW_HEADERS})

add_executable(dirview ${DIRVIEW_SRCS})
target_link_libraries(dirview Qt2)
