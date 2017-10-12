set(SHOWIMG_SRCS
    main.cpp
    imagetexteditor.cpp
    showimg.cpp
    imagefip.cpp
    )

set(SHOWIMG_HEADERS
    showimg.h imagetexteditor.h
    imagefip.h
    )

qt2_wrap_moc(SHOWIMG_SRCS SOURCES ${SHOWIMG_HEADERS})

add_executable(showimg ${SHOWIMG_SRCS})
target_link_libraries(showimg Qt::Qt2)
