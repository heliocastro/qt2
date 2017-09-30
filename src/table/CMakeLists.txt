include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(TABLE_SRCS
    qtable.cpp
    )

qt2_wrap_cpp(TARGET table
    SOURCES
    qtable.cpp
    qtable.h
)

add_library(table OBJECT ${TABLE_SRCS} ${MOC_TABLE_SRCS})
add_dependencies(table moc_table)
