list(APPEND QT_DEFINITIONS -DQT_BUILTIN_GIF_READER=1 -DQT_XFT)

if(ENABLE_THREAD_SUPPORT)
    list(APPEND QT_DEFINITIONS -DREENTRANT -DQT_THREAD_SUPPORT)
endif()

add_subdirectory(3rdparty)
add_subdirectory(moc)
add_subdirectory(compat)
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
if(ENABLE_OPENGL)
    add_subdirectory(opengl)
endif()

add_library(Qt2 SHARED
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
    $<TARGET_OBJECTS:opengl>
    ${THIRD_PARTY_OBJECTS}
)

target_link_libraries(Qt2
    ${FREETYPE_LIBRARIES}
    ${FONTCONFIG_LIBRARIES}
    ${XFT_LIBRARIES}
    ${X11_LIBRARIES}
    ${MNG_LIBRARIES}
    ${JPEG_LIBRARIES}
    GLUT::GLUT
    OpenGL::GL
    $<$<BOOL:${SYSTEM_LIBPNG}>:PNG::PNG>
    Threads::Threads
    ZLIB::ZLIB
)

set_target_properties(Qt2 PROPERTIES
    OUTPUT_NAME qt2
    VERSION ${PROJECT_VERSION}
    SOVERSION ${PROJECT_VERSION_MAJOR}
    )

target_include_directories(Qt2 PUBLIC
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/qt2>
    ${FREETYPE_INCLUDE_DIRS}
    ${FONTCONFIG_INCLUDE_DIRS}
    ${XFT_INCLUDE_DIRS}
    ${X11_INCLUDE_DIRS}
    ${MNG_INCLUDE_DIRS}
    ${JPEG_INCLUDE_DIRS}
    )

install(TARGETS Qt2 EXPORT Qt2Targets
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/Qt2/Qt2ConfigVersion.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY AnyNewerVersion
)

export(EXPORT Qt2Targets
    FILE "${CMAKE_CURRENT_BINARY_DIR}/Qt2/Qt2Targets.cmake"
    NAMESPACE Qt::
)

configure_file(${PROJECT_SOURCE_DIR}/cmake/Qt2Config.cmake
    "${CMAKE_CURRENT_BINARY_DIR}/Qt2/Qt2Config.cmake"
    COPYONLY
)

install(EXPORT Qt2Targets
    FILE Qt2Targets.cmake
    NAMESPACE Qt::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/qt2
    )

install(FILES
    ${PROJECT_SOURCE_DIR}/cmake/Qt2Config.cmake
    ${PROJECT_SOURCE_DIR}/cmake/Qt2Utils.cmake
    "${CMAKE_CURRENT_BINARY_DIR}/Qt2/Qt2ConfigVersion.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/Qt2
    COMPONENT Devel
)

