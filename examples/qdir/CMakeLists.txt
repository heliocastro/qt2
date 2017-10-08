set(QDIR_SRCS
    qdir.cpp ../dirview/dirview.cpp
    )

set(QDIR_HEADERS
    qdir.h ../dirview/dirview.h
    )

qt2_wrap_moc(QDIR_SRCS SOURCES ${QDIR_HEADERS})

add_executable(qdir ${QDIR_SRCS})
target_link_libraries(qdir Qt2)
