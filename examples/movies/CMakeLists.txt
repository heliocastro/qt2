set(MOVIES_SRCS
    main.cpp
    )

qt2_wrap_cpp(TARGET movies SOURCES main.cpp)

add_executable(movies ${MOVIES_SRCS})
add_dependencies(movies moc_movies)
target_link_libraries(movies Qt2)
