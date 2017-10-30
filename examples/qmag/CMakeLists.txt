set(QMAG_SRCS
    qmag.cpp
    )

qt2_wrap_cpp(QMAG_SRCS SOURCES qmag.cpp)

add_executable(qmag ${QMAG_SRCS})
target_link_libraries(qmag Qt::Qt2)
