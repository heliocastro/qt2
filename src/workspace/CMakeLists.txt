include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(WORKSPACE_SRCS
    qworkspace.cpp
    )

set(WORKSPACE_HEADERS
    qworkspace.h
)
install(FILES ${WORKSPACE_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

qt2_wrap_cpp(TARGET workspace
    SOURCES
    qworkspace.cpp
    qworkspace.h
)

add_library(workspace OBJECT ${WORKSPACE_SRCS} ${MOC_WORKSPACE_SRCS})
add_dependencies(workspace moc_workspace)
