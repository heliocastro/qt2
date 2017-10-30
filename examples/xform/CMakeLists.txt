set(XFORM_SRCS
    xform.cpp
    )

qt2_wrap_cpp(XFORM_SRCS SOURCES xform.cpp)
qt2_wrap_moc(XFORM_SRCS SOURCES ${XFORM_HEADERS})

add_executable(xform ${XFORM_SRCS})
target_link_libraries(xform Qt::Qt2)
