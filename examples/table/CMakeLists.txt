set(EXAMPLE_TABLE_SRCS
    main.cpp
    )

qt2_wrap_moc(EXAMPLE_TABLE_SRCS SOURCES ${TABLE_HEADERS})

add_executable(ex_table ${EXAMPLE_TABLE_SRCS})
target_link_libraries(ex_table Qt2)
set_target_properties(ex_table PROPERTIES OUTPUT_FILENAME table)
