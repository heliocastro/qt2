set(ZLIB_SRCS
    adler32.c
    compress.c
    crc32.c
    deflate.c
    gzio.c
    infblock.c
    infcodes.c
    inffast.c
    inflate.c
    inftrees.c
    infutil.c
    trees.c
    uncompr.c
    zutil.c
    )

add_library(zlib STATIC ${ZLIB_SRCS})
target_include_directories(zlib SYSTEM BEFORE
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
   )

add_library(ZLIB::ZLIB ALIAS zlib)

set_target_properties(zlib PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    )

install(TARGETS zlib EXPORT zlibTargets
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}/qt2
    )

export(EXPORT zlibTargets
    FILE ${CMAKE_CURRENT_BINARY_DIR}/zlibTargets.cmake
    TARGETS zlib
    NAMESPACE ZLIB::
)

install(EXPORT zlibTargets
    FILE zlibTargets.cmake
    NAMESPACE ZLIB::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/Qt2
    )
