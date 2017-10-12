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

add_qt2_object_library(table
    SOURCES
        ${TABLE_SRCS}
    COMPILE_DEFINITIONS
        ${QT_DEFINITIONS}
    )
