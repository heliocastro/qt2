if(ENABLE_THREAD_SUPPORT)
    list(APPEND QT_DEFINITIONS -DREENTRANT -DQT_THREAD_SUPPORT)
endif()

if(SYSTEM_ZLIB)
    include_directories(${ZLIB_INCLUDE_DIRS})
endif()

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
include_directories(${PROJECT_SOURCE_DIR}/include)

add_definitions(${QT_DEFINITIONS})

add_subdirectory(3rdparty)
add_subdirectory(moc)
add_subdirectory(tools)
add_subdirectory(kernel)
add_subdirectory(widgets)
add_subdirectory(dialogs)
add_subdirectory(iconview)
add_subdirectory(workspace)
add_subdirectory(network)
add_subdirectory(canvas)
add_subdirectory(table)
add_subdirectory(xml)

add_library(qt SHARED
    $<TARGET_OBJECTS:tools>
    $<TARGET_OBJECTS:kernel>
    $<TARGET_OBJECTS:widgets>
    $<TARGET_OBJECTS:dialogs>
    $<TARGET_OBJECTS:iconview>
    $<TARGET_OBJECTS:workspace>
    $<TARGET_OBJECTS:network>
    $<TARGET_OBJECTS:canvas>
    $<TARGET_OBJECTS:table>
    $<TARGET_OBJECTS:xml>
    $<TARGET_OBJECTS:libpng>
)

target_link_libraries(qt
    ${ZLIB_LIBRARIES}
    ${PNG_LIBRARIES}
    ${FREETYPE_LIBRARIES}
    ${X11_LIBRARIES}
    ${MNG_LIBRARIES}
    ${JPEG_LIBRARIES}
    Threads::Threads
)

set_target_properties(qt PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION ${PROJECT_VERSION_MAJOR}
)
