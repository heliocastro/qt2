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

qt2_wrap_cpp(TARGET network
    SOURCES
    qdns.h
    qftp.h
    qserversocket.h
    qsocket.h
)

add_library(network OBJECT ${NETWORK_SRCS} ${MOC_NETWORK_SRCS})
