set(EXAMPLE_ICONVIEW_SRCS
    main.cpp
    )

qt2_wrap_moc(EXAMPLE_ICONVIEW_SRCS SOURCES ${EXAMPLE_ICONVIEW_HEADERS})
qt2_wrap_cpp(TARGET iconview_example SOURCES main.cpp)

add_executable(iconview_example ${EXAMPLE_ICONVIEW_SRCS})
target_link_libraries(iconview_example Qt::Qt2)
add_dependencies(iconview_example moc_iconview_example)
set_target_properties(iconview_example PROPERTIES OUTPUT_FILENAME iconview)
