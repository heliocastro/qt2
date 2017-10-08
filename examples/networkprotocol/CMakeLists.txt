set(NETWORKPROTOCOL_SRCS
    main.cpp
    nntp.cpp http.cpp view.cpp
    )

set(NETWORKPROTOCOL_HEADERS
    nntp.h http.h view.h
    )

qt2_wrap_moc(NETWORKPROTOCOL_SRCS SOURCES ${NETWORKPROTOCOL_HEADERS})

add_executable(networkprotocol ${NETWORKPROTOCOL_SRCS})
target_link_libraries(networkprotocol Qt2)
