set(SHARED_SRCS
    domtool.cpp
    widgetdatabase.cpp)

qt2_wrap_moc(SHARED_SRCS
    SOURCES
    domtool.h
    widgetdatabase.h)

add_library(shared OBJECT ${SHARED_SRCS})

set_property(TARGET shared APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(shared PRIVATE ${PROJECT_SOURCE_DIR}/include)
