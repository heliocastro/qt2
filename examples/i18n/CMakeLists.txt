set(I18N_SRCS
    main.cpp
    mywidget.cpp
    )

set(I18N_HEADERS
    mywidget.h
    )

qt2_wrap_moc(I18N_SRCS SOURCES ${I18N_HEADERS})

add_executable(i18n ${I18N_SRCS})
target_link_libraries(i18n Qt::Qt2)
