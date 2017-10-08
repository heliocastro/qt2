set(POPUP_SRCS
    popup.cpp
    )

set(POPUP_HEADERS
    popup.h
    )

qt2_wrap_moc(POPUP_SRCS SOURCES ${POPUP_HEADERS})

add_executable(popup ${POPUP_SRCS})
target_link_libraries(popup Qt2)
