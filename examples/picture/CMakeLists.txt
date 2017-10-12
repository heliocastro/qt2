set(PICTURE_SRCS
    picture.cpp
    )

qt2_wrap_moc(PICTURE_SRCS SOURCES ${PICTURE_HEADERS})

add_executable(picture ${PICTURE_SRCS})
target_link_libraries(picture Qt::Qt2)
