set(EXAMPLE_ICONVIEW_SRCS
    main.cpp
    )

qt2_wrap_moc(EXAMPLE_ICONVIEW_SRCS SOURCES ${EXAMPLE_ICONVIEW_HEADERS})
qt2_wrap_cpp(TARGET iconview_example SOURCES main.cpp)

add_executable(iconview_example ${EXAMPLE_ICONVIEW_SRCS})
target_link_libraries(iconview_example Qt2)
set_target_properties(iconview_example PROPERTIES OUTPUT_FILENAME iconview)
