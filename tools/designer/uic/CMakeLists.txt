set(UIC_SRCS uic.cpp)

qt2_wrap_moc(uic.h)

add_executable(uic-qt2
    ${UIC_SRCS}
    $<TARGET_OBJECTS:qutil>
    $<TARGET_OBJECTS:shared>
    $<TARGET_OBJECTS:integration>
    )

target_link_libraries(uic-qt2
    Qt::Qt2
    ZLIB::ZLIB
    )

target_compile_definitions(uic-qt2 PUBLIC UIC)
target_include_directories(uic-qt2 PRIVATE
    ../qutil
    ../shared
    )

install(TARGETS uic-qt2 RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
