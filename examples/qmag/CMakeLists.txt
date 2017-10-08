set(QMAG_SRCS
    qmag.cpp
    )

qt2_wrap_cpp(TARGET qmag SOURCES qmag.cpp)

add_executable(qmag ${QMAG_SRCS})
add_dependencies(qmag moc_qmag)
target_link_libraries(qmag Qt2)
