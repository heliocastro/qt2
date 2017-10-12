set(WIZARD_SRCS
    main.cpp
    wizard.cpp
    )

set(WIZARD_HEADERS
    wizard.h
    )

qt2_wrap_moc(WIZARD_SRCS SOURCES ${WIZARD_HEADERS})

add_executable(wizard ${WIZARD_SRCS})
target_link_libraries(wizard Qt::Qt2)
