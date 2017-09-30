include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(WORKSPACE_SRCS
    qworkspace.cpp
    )

qt2_wrap_cpp(TARGET workspace
    SOURCES qworkspace.cpp
    VERBOSE)

add_library(workspace OBJECT ${WORKSPACE_SRCS})
add_dependencies(workspace moc_workspace)

target_compile_definitions(workspace
    PUBLIC ${QT_DEFINITIONS}
)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(workspace PUBLIC ${PROJECT_SOURCE_DIR}/include)
