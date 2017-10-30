set(MOVIES_SRCS
    main.cpp
    )

qt2_wrap_cpp(MOVIES_SRCS SOURCES main.cpp)

add_executable(movies ${MOVIES_SRCS})
target_link_libraries(movies Qt::Qt2)
