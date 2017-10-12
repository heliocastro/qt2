set(XFORM_SRCS
    xform.cpp
    )

qt2_wrap_cpp(TARGET xform SOURCES xform.cpp)
qt2_wrap_moc(XFORM_SRCS SOURCES ${XFORM_HEADERS})

add_executable(xform ${XFORM_SRCS})
add_dependencies(xform moc_xform)
target_link_libraries(xform Qt::Qt2)
