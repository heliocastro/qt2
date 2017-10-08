set(MDI_SRCS
    application.cpp
    main.cpp
    )

set(MDI_HEADERS
    application.h
    )

qt2_wrap_moc(MDI_SRCS SOURCES ${MDI_HEADERS})

add_executable(mdi ${MDI_SRCS})
target_link_libraries(mdi Qt2)
