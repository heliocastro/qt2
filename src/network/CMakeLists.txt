
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

add_library(network OBJECT ${NETWORK_SRCS})

target_compile_definitions(network
    PUBLIC ${QT_DEFINITIONS}
)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(network PUBLIC ${PROJECT_SOURCE_DIR}/include)
