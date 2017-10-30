include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(DIALOGS_SRCS
    qcolordialog.cpp
    qfiledialog.cpp
    qfontdialog.cpp
    qinputdialog.cpp
    qmessagebox.cpp
    qprintdialog.cpp
    qprogressdialog.cpp
    qtabdialog.cpp
    qwizard.cpp
    )


set(DIALOGS_HEADERS
    qcolordialog.h
    qfiledialog.h
    qfontdialog.h
    qinputdialog.h
    qmessagebox.h
    qprintdialog.h
    qprogressdialog.h
    qtabdialog.h
    qwizard.h
)

qt2_wrap_cpp(DIALOGS_SRCS
    SOURCES
    qcolordialog.cpp
    qfiledialog.cpp
    )

qt2_wrap_moc(DIALOGS_SRCS
    SOURCES ${DIALOGS_HEADERS})

install(FILES ${DIALOGS_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qt2)

add_qt2_object_library(dialogs
    SOURCES
        ${DIALOGS_SRCS}
    COMPILE_DEFINITIONS
        ${QT_DEFINITIONS}
    )
