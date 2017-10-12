include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(NETWORK_SRCS
    qdns.cpp
    qftp.cpp
    qhostaddress.cpp
    qnetwork.cpp
    qserversocket.cpp
    qsocket.cpp
    qsocketdevice.cpp
    qsocketdevice_unix.cpp
    )

set(NETWORK_HEADERS
    qdns.h
    qftp.h
    qhostaddress.h
    qnetwork.h
    qserversocket.h
    qsocketdevice.h
    qsocket.h
)
install(FILES ${NETWORK_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

qt2_wrap_moc(NETWORK_SRCS
    SOURCES ${NETWORK_HEADERS})


add_qt2_object_library(network
    SOURCES
        ${NETWORK_SRCS}
    COMPILE_DEFINITIONS
        ${QT_DEFINITIONS}
    )
