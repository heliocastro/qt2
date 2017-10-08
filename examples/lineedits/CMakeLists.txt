set(LINEEDITS_SRCS
    lineedits.cpp
    main.cpp
    )

set(LINEEDITS_HEADERS
    lineedits.h
    )

qt2_wrap_moc(LINEEDITS_SRCS SOURCES ${LINEEDITS_HEADERS})

add_executable(lineedits ${LINEEDITS_SRCS})
target_link_libraries(lineedits Qt2)
