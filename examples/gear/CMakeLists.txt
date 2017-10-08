set(GEAR_SRCS
    gear.cpp
    )

qt2_wrap_moc(GEAR_SRCS SOURCES ${GEAR_HEADERS})

add_executable(gear ${GEAR_SRCS})
target_link_libraries(gear Qt2)
