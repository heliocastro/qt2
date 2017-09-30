if(ENABLE_THREAD_SUPPORT)
    list(APPEND QT_DEFINITIONS REENTRANT QT_THREAD_SUPPORT)
endif()

if(ENABLE_XFT)
    list(APPEND QT_DEFINITIONS QT_XFT)
    include_directories(${FREETYPE_INCLUDE_DIR_ft2build})
endif()

if(SYSTEM_ZLIB)
    include_directories(${ZLIB_INCLUDE_DIRS})
endif()

add_subdirectory(3rdparty)
add_subdirectory(moc)
add_subdirectory(tools)
add_subdirectory(kernel)
add_subdirectory(widgets)
add_subdirectory(dialogs)
add_subdirectory(iconview)
add_subdirectory(workspace)
add_subdirectory(network)

add_library(qt SHARED
    $<TARGET_OBJECTS:tools>
    $<TARGET_OBJECTS:kernel>
    $<TARGET_OBJECTS:widgets>
    $<TARGET_OBJECTS:dialogs>
    $<TARGET_OBJECTS:iconview>
    $<TARGET_OBJECTS:workspace>
    $<TARGET_OBJECTS:network>
    $<TARGET_OBJECTS:libpng>
)

target_link_libraries(qt
    ${ZLIB_LIBRARIES}
    ${PNG_LIBRARIES}
    )

set_target_properties(qt PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION ${PROJECT_VERSION_MAJOR}
)
