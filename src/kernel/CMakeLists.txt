include_directories(${CMAKE_CURRENT_BINARY_DIR})

if(ENABLE_XFT)
    list(APPEND QT_DEFINITIONS QT_XFT)
    include_directories(${FREETYPE_INCLUDE_DIR_ft2build})
endif()

set(KERNEL_SRCS
    qabstractlayout.cpp
    qaccel.cpp
    qapplication.cpp
    qapplication_x11.cpp
    qasyncimageio.cpp
    qasyncio.cpp
    qbitmap.cpp
    qclipboard.cpp
    qclipboard_x11.cpp
    qcolor.cpp
    qcolor_p.cpp
    qcolor_x11.cpp
    qconnection.cpp
    qcursor.cpp
    qcursor_x11.cpp
    qdialog.cpp
    qdnd_x11.cpp
    qdragobject.cpp
    qdrawutil.cpp
    qdropsite.cpp
    qevent.cpp
    qfocusdata.cpp
    qfont.cpp
    qfontdatabase.cpp
    qfont_x11.cpp
    qguardedptr.cpp
    qiconset.cpp
    qimage.cpp
    qjpegio.cpp
    qlayout.cpp
    qlayoutengine.cpp
    qlocalfs.cpp
    qmetaobject.cpp
    qmime.cpp
    qmngio.cpp
    qmotifdnd_x11.cpp
    qmovie.cpp
    qnetworkprotocol.cpp
    qnpsupport.cpp
    qobject.cpp
    qpaintdevicemetrics.cpp
    qpaintdevice_x11.cpp
    qpainter.cpp
    qpainter_x11.cpp
    qpalette.cpp
    qpicture.cpp
    qpixmapcache.cpp
    qpixmap.cpp
    qpixmap_x11.cpp
    qpngio.cpp
    qpointarray.cpp
    qpoint.cpp
    qpolygonscanner.cpp
    qprinter.cpp
    qprinter_x11.cpp
    qpsprinter.cpp
    qrect.cpp
    qregion.cpp
    qregion_x11.cpp
    qrichtext.cpp
    qsemimodal.cpp
    qsharedmemory.cpp
    qsignal.cpp
    qsignalmapper.cpp
    qsimplerichtext.cpp
    qsize.cpp
    qsizegrip.cpp
    qsocketnotifier.cpp
    qsound.cpp
    qsound_x11.cpp
    qstyle.cpp
    qstylesheet.cpp
    qthread_unix.cpp
    qtimer.cpp
    qtranslator.cpp
    qurl.cpp
    qurlinfo.cpp
    qurloperator.cpp
    qvariant.cpp
    qwidget.cpp
    qwidgetcreate_x11.cpp
    qwidget_x11.cpp
    qwindow.cpp
    qwmatrix.cpp
)

qt2_wrap_cpp(
    TARGET kernel
    SOURCES
    qapplication_x11.cpp
    qmovie.cpp
    qthread_unix.cpp
    qabstractlayout.h
    qaccel.h
    qapplication.h
    qasyncio.h
    qclipboard.h
    qdialog.h
    qdragobject.h
    qguardedptr.h
    qlayout.h
    qtranslator.h
    qnetworkprotocol.h
    qsemimodal.h
    qsessionmanager.h
    qsignalmapper.h
    qsizegrip.h
    qsocketnotifier.h
    qsound.h
    qstyle.h
    qstylesheet.h
    qtimer.h
    qlocalfs.h
    qurloperator.h
    qwidget.h
    )

add_library(kernel OBJECT ${KERNEL_SRCS} ${MOC_KERNEL_SRCS})
add_dependencies(kernel moc_kernel)

if(NOT SYSTEM_LIBPNG)
    target_include_directories(kernel BEFORE PUBLIC
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/src/3rdparty/libpng>
)
endif()


