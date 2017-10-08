set(QFD_SRCS
    fontdisplayer.cpp
    qfd.cpp
    )

set(QFD_HEADERS
    fontdisplayer.h
    )

qt2_wrap_moc(QFD_SRCS SOURCES ${QFD_HEADERS})

add_executable(qfd ${QFD_SRCS})
target_link_libraries(qfd Qt2)
