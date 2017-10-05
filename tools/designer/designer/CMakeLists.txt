set(DESIGNER_SRCS
    command.cpp
    formwindow.cpp
    defs.cpp
    layout.cpp
    main.cpp
    mainwindow.cpp
    metadatabase.cpp
    pixmapchooser.cpp
    propertyeditor.cpp
    resource.cpp
    sizehandle.cpp
    orderindicator.cpp
    widgetfactory.cpp
    config.cpp
    hierarchyview.cpp
    listboxeditorimpl.cpp
    connectioneditorimpl.cpp
    newformimpl.cpp
    formlist.cpp
    help.cpp
    editslotsimpl.cpp
    listvieweditorimpl.cpp
    connectionviewerimpl.cpp
    customwidgeteditorimpl.cpp
    paletteeditorimpl.cpp
    styledbutton.cpp
    previewstack.cpp
    iconvieweditorimpl.cpp
    helpdialogimpl.cpp
    topicchooserimpl.cpp
    multilineeditorimpl.cpp
    formsettingsimpl.cpp
    asciivalidator.cpp
    import.cpp
    splashloader.cpp
    )

set(DESIGNER_UIS
    listboxeditor.ui
    connectioneditor.ui
    editslots.ui
    newform.ui
    listvieweditor.ui
    connectionviewer.ui
    customwidgeteditor.ui
    texteditpreview.ui
    listviewpreview.ui
    paletteeditor.ui
    radiopreview.ui
    checkboxpreview.ui
    widgetpreview.ui
    iconvieweditor.ui
    preferences.ui
    helpdialog.ui
    topicchooser.ui
    multilineeditor.ui
    formsettings.ui
    about.ui
    pixmapfunction.ui
    createtemplate.ui
    )

set(DESIGNER_HEADERS
    asciivalidator.h
    command.h
    config.h
    connectioneditorimpl.h
    connectionviewerimpl.h
    customwidgeteditorimpl.h
    defs.h
    editslotsimpl.h
    formlist.h
    formsettingsimpl.h
    formwindow.h
    helpdialogimpl.h
    help.h
    hierarchyview.h
    iconvieweditorimpl.h
    import.h
    layout.h
    listboxeditorimpl.h
    listvieweditorimpl.h
    mainwindow.h
    metadatabase.h
    multilineeditorimpl.h
    newformimpl.h
    orderindicator.h
    paletteeditorimpl.h
    pixmapchooser.h
    previewstack.h
    propertyeditor.h
    resource.h
    sizehandle.h
    splashloader.h
    styledbutton.h
    topicchooserimpl.h
    widgetfactory.h
    )

qt2_wrap_moc(DESIGNER_SRCS
    SOURCES ${DESIGNER_HEADERS})

qt2_wrap_ui(DESIGNER_SRCS
    SOURCES ${DESIGNER_UIS}
    )

add_executable(designer ${DESIGNER_SRCS}
    $<TARGET_OBJECTS:qutil>
    $<TARGET_OBJECTS:shared>
    $<TARGET_OBJECTS:integration>
    )

target_link_libraries(designer
    qt
    ${ZLIB_LIBRARIES}
    )

target_compile_definitions(designer PRIVATE DESIGNER)
target_include_directories(designer PRIVATE
    ../util
    ../shared
    )
