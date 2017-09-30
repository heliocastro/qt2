
include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(ICONVIEW_SRCS
    qiconview.cpp
    )

qt2_wrap_cpp(TARGET iconview
    SOURCES qiconview.cpp
    VERBOSE)

add_library(iconview OBJECT ${ICONVIEW_SRCS})
add_dependencies(iconview moc_iconview)

target_compile_definitions(iconview
    PUBLIC ${QT_DEFINITIONS}
)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(iconview PUBLIC ${PROJECT_SOURCE_DIR}/include)
