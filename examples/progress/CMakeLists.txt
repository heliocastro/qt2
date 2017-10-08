set(PROGRESS_SRCS
    progress.cpp
    )

qt2_wrap_moc(PROGRESS_SRCS SOURCES ${PROGRESS_HEADERS})
qt2_wrap_cpp(TARGET progress SOURCES progress.cpp)

add_executable(progress ${PROGRESS_SRCS})
target_link_libraries(progress Qt2)
