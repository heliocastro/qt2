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
    SOURCES qcolordialog.cpp qfiledialog.cpp
    VERBOSE)

add_library(dialogs OBJECT ${DIALOGS_SRCS})
add_dependencies(dialogs moc_dialogs)

target_compile_definitions(dialogs
    PUBLIC ${QT_DEFINITIONS}
)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(dialogs PUBLIC ${PROJECT_SOURCE_DIR}/include)
