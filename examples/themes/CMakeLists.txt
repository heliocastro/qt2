set(THEMES_SRCS
    themes.cpp
    main.cpp
    ../buttongroups/buttongroups.cpp
    ../lineedits/lineedits.cpp
    ../listboxcombo/listboxcombo.cpp
    ../checklists/checklists.cpp
    ../progressbar/progressbar.cpp
    ../rangecontrols/rangecontrols.cpp
    ../richtext/richtext.cpp
    wood.cpp
    metal.cpp
    )

set(THEMES_HEADERS
    themes.h
    ../buttongroups/buttongroups.h
    ../lineedits/lineedits.h
    ../listboxcombo/listboxcombo.h
    ../checklists/checklists.h
    ../progressbar/progressbar.h
    ../rangecontrols/rangecontrols.h
    ../richtext/richtext.h
    wood.h
    metal.h
    )

qt2_wrap_moc(THEMES_SRCS SOURCES ${THEMES_HEADERS})

add_executable(themes ${THEMES_SRCS})
target_link_libraries(themes Qt::Qt2)
