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

add_custom_command(
    OUTPUT lex.yy.c
    COMMAND flex -o lex.yy.c ${CMAKE_CURRENT_SOURCE_DIR}/moc.l
    )
add_custom_command(
    OUTPUT mocgen.cpp
    DEPENDS lex.yy.c
    COMMAND yacc -d -o mocgen.cpp ${CMAKE_CURRENT_SOURCE_DIR}/moc.y
    )
add_custom_target(flexyacc
    DEPENDS mocgen.cpp
    )

add_executable(moc-qt2 ${MOC_SRCS} ${TOOLS_IMPORTED_SRCS})

target_compile_definitions(moc-qt2 PRIVATE -DQT_NO_CODECS -DQT_LITE_UNICODE)

# This is really not the most optimal or pretty way to add the include directories
# But at least we avoid to polute the main cmakelist files
target_include_directories(moc-qt2 PUBLIC
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/src/tools
)
target_compile_options(moc-qt2 PRIVATE -Wno-format-security)

install(TARGETS moc-qt2 RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
