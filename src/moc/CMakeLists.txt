set(MOC_SRCS mocgen.cpp)

# MOC is a special case, to boostrap moc we need to include
# external source files
set(TOOLS_IMPORTED_SRCS
    ${PROJECT_SOURCE_DIR}/src/tools/qbuffer.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qcollection.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qcstring.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qdatastream.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qdatetime.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qfile.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qgarray.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qgdict.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qglist.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qglobal.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qgvector.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qiodevice.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qregexp.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qstring.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qtextcodec.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qtextstream.cpp
    ${PROJECT_SOURCE_DIR}/src/tools/qutfcodec.cpp
)

if(UNIX)
    list(APPEND TOOLS_IMPORTED_SRCS
        ${PROJECT_SOURCE_DIR}/src/tools/qfile_unix.cpp)
elseif(MSVC)
    list(APPEND TOOLS_IMPORTED_SRCS
        ${PROJECT_SOURCE_DIR}/src/tools/qfile_win.cpp)
endif()

add_executable(moc ${MOC_SRCS} ${TOOLS_IMPORTED_SRCS})

set(internalmoc CACHE moc $<TARGET_FILE:moc>)

target_compile_definitions(moc PRIVATE -DQT_NO_CODECS -DQT_LITE_UNICODE)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(moc PUBLIC
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/src/tools
)
