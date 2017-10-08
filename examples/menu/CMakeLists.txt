set(MENU_SRCS
    menu.cpp
    )

set(MENU_HEADERS
    menu.h
    )

qt2_wrap_moc(MENU_SRCS SOURCES ${MENU_HEADERS})

add_executable(menu ${MENU_SRCS})
target_link_libraries(menu Qt2)
