set(FILEICONVIEW_SRCS
    main.cpp
    mainwindow.cpp
    qfileiconview.cpp
    ../dirview/dirview.cpp
    )

set(FILEICONVIEW_HEADERS
    mainwindow.h
    qfileiconview.h
	../dirview/dirview.h
    )

qt2_wrap_moc(FILEICONVIEW_SRCS SOURCES ${FILEICONVIEW_HEADERS})

add_executable(fileiconview ${FILEICONVIEW_SRCS})
target_link_libraries(fileiconview Qt2)
