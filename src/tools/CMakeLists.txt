set(TOOLS_SRCS
    qdir_unix.cpp
    qfile_unix.cpp
    qfileinfo_unix.cpp
    qbig5codec.cpp
    qbitarray.cpp
    qbuffer.cpp
    qcollection.cpp
    qcstring.cpp
    qdatastream.cpp
    qdatetime.cpp
    qdir.cpp
    qeucjpcodec.cpp
    qeuckrcodec.cpp
    qfile.cpp
    qfileinfo.cpp
    qgarray.cpp
    qgbkcodec.cpp
    qgcache.cpp
    qgdict.cpp
    qglist.cpp
    qglobal.cpp
    qgvector.cpp
    qiodevice.cpp
    qjiscodec.cpp
    qjpunicode.cpp
    qmap.cpp
    qregexp.cpp
    qrtlcodec.cpp
    qsjiscodec.cpp
    qstring.cpp
    qstringlist.cpp
    qtextcodec.cpp
    qtextstream.cpp
    qtsciicodec.cpp
    qutfcodec.cpp
)

if(UNIX)
    list(APPEND TOOLS_SRCS qfile_unix.cpp)
elseif(MSVC)
    list(APPEND TOOLS_SRCS qfile_win.cpp)
endif()

add_library(tools OBJECT ${TOOLS_SRCS})

target_compile_definitions(tools
    PUBLIC ${QT_DEFINITIONS}
)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(tools
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
