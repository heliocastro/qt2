set(PROGRESSBAR_SRCS
    main.cpp
    progressbar.cpp
    )

set(PROGRESSBAR_HEADERS
    progressbar.h
    )

qt2_wrap_moc(PROGRESSBAR_SRCS SOURCES ${PROGRESSBAR_HEADERS})

add_executable(progressbar ${PROGRESSBAR_SRCS})
target_link_libraries(progressbar Qt2)
