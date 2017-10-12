set(FTPCLIENT_SRCS
    ftpmainwindow.cpp
    ftpview.cpp
    main.cpp
    )

set(FTPCLIENT_HEADERS
    ftpmainwindow.h
    ftpview.h
    )

qt2_wrap_moc(FTPCLIENT_SRCS SOURCES ${FTPCLIENT_HEADERS})

add_executable(ftpclient ${FTPCLIENT_SRCS})
target_link_libraries(ftpclient Qt::Qt2)
