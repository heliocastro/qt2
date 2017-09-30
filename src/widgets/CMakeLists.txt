include_directories(${CMAKE_CURRENT_BINARY_DIR})

set(WIDGETS_SRCS
    qaction.cpp
    qbutton.cpp
    qbuttongroup.cpp
    qcdestyle.cpp
    qcheckbox.cpp
    qcombobox.cpp
    qcommonstyle.cpp
    qdial.cpp
    qeffects.cpp
    qframe.cpp
    qgrid.cpp
    qgroupbox.cpp
    qhbox.cpp
    qhbuttongroup.cpp
    qheader.cpp
    qhgroupbox.cpp
    qinterlacestyle.cpp
    qlabel.cpp
    qlcdnumber.cpp
    qlineedit.cpp
    qlistbox.cpp
    qlistview.cpp
    qmainwindow.cpp
    qmenubar.cpp
    qmenudata.cpp
    qmotifplusstyle.cpp
    qmotifstyle.cpp
    qmultilineedit.cpp
    qplatinumstyle.cpp
    qpopupmenu.cpp
    qprogressbar.cpp
    qpushbutton.cpp
    qradiobutton.cpp
    qrangecontrol.cpp
    qscrollbar.cpp
    qscrollview.cpp
    qsgistyle.cpp
    qslider.cpp
    qspinbox.cpp
    qsplitter.cpp
    qstatusbar.cpp
    qtabbar.cpp
    qtableview.cpp
    qtabwidget.cpp
    qtextbrowser.cpp
    qtextview.cpp
    qtoolbar.cpp
    qtoolbutton.cpp
    qtooltip.cpp
    qvalidator.cpp
    qvbox.cpp
    qvbuttongroup.cpp
    qvgroupbox.cpp
    qwhatsthis.cpp
    qwidgetstack.cpp
    qwindowsstyle.cpp
    )

qt2_wrap_cpp(TARGET widgets
    SOURCES qeffects.cpp qmainwindow.cpp qtoolbar.cpp qtooltip.cpp qwhatsthis.cpp
    VERBOSE)

add_library(widgets OBJECT ${WIDGETS_SRCS})
add_dependencies(widgets moc_widgets)

target_compile_definitions(widgets
    PUBLIC ${QT_DEFINITIONS}
)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(widgets PUBLIC ${PROJECT_SOURCE_DIR}/include)
