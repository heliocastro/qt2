set(UIC_SRCS uic.cpp)

qt2_wrap_moc(uic.h)

add_executable(uic
    ${UIC_SRCS}
    $<TARGET_OBJECTS:qutil>
    $<TARGET_OBJECTS:shared>
    $<TARGET_OBJECTS:integration>
    )

target_link_libraries(uic
    qt
    ${ZLIB_LIBRARIES}
    )

target_compile_definitions(uic PUBLIC UIC)
target_include_directories(uic PRIVATE
    ../qutil
    ../shared
    )
