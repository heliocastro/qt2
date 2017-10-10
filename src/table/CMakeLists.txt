include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(TABLE_SRCS
    qtable.cpp
    )

set(TABLE_HEADERS
    qtable.h
)
install(FILES ${TABLE_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

qt2_wrap_cpp(TARGET table
    SOURCES
    qtable.cpp
)

qt2_wrap_moc(TABLE_SRCS
    SOURCES qtable.h)

add_library(table OBJECT ${TABLE_SRCS} ${MOC_TABLE_SRCS})
add_dependencies(table moc_table)
target_compile_definitions(table PRIVATE ${QT_DEFINITIONS})
