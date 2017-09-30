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

qt2_wrap_cpp(TARGET dialogs
    SOURCES
    qcolordialog.cpp
    qfiledialog.cpp
    qcolordialog.h
    qfiledialog.h
    qfontdialog.h
    qmessagebox.h
    qprogressdialog.h
    qtabdialog.h
    qwizard.h
    qinputdialog.h
    qprintdialog.h
    )

add_library(dialogs OBJECT ${DIALOGS_SRCS} ${MOC_DIALOGS_SRCS})
add_dependencies(dialogs moc_dialogs)
