set(WIDGETS_EXAMPLE_SRCS
    main.cpp widgets.cpp ../aclock/aclock.cpp ../dclock/dclock.cpp
    )

set(WIDGETS_HEADERS
    widgets.h ../aclock/aclock.h ../dclock/dclock.h
    )

qt2_wrap_moc(WIDGETS_EXAMPLE_SRCS SOURCES ${WIDGETS_HEADERS})

add_executable(ex_widgets ${WIDGETS_EXAMPLE_SRCS})
target_link_libraries(ex_widgets Qt::Qt2)
set_target_properties(ex_widgets PROPERTIES OUTPUT_NAME widgets)
