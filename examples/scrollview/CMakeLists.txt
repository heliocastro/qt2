set(SCROLLVIEW_SRCS
    scrollview.cpp
    )

qt2_wrap_cpp(SCROLLVIEW_SRCS SOURCES scrollview.cpp)
qt2_wrap_moc(SCROLLVIEW_SRCS SOURCES ${SCROLLVIEW_HEADERS})

add_executable(scrollview ${SCROLLVIEW_SRCS})
target_link_libraries(scrollview Qt::Qt2)
