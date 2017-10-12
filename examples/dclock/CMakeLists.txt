set(DCLOCK_SRCS
    dclock.cpp
    main.cpp
    )

set(DCLOCK_HEADERS
    dclock.h
    )

qt2_wrap_moc(DCLOCK_SRCS SOURCES ${DCLOCK_HEADERS})

add_executable(dclock ${DCLOCK_SRCS})
target_link_libraries(dclock Qt::Qt2)
