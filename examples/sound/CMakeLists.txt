set(SOUND_SRCS
    sound.cpp
    )

set(SOUND_HEADERS
    sound.h
    )

qt2_wrap_moc(SOUND_SRCS SOURCES ${SOUND_HEADERS})

add_executable(sound ${SOUND_SRCS})
target_link_libraries(sound Qt2)
