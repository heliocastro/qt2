set(PNG_SRCS
    png.c
    pngerror.c
    pngget.c
    pngmem.c
    pngpread.c
    pngread.c
    pngrio.c
    pngrtran.c
    pngrutil.c
    pngset.c
    pngtest.c
    pngtrans.c
    pngvcrd.c
    pngwio.c
    pngwrite.c
    pngwtran.c
    pngwutil.c
)

add_library(libpng STATIC ${PNG_SRCS})
target_include_directories(libpng SYSTEM BEFORE
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
   )

add_library(PNG::PNG ALIAS libpng)

set_target_properties(libpng PROPERTIES
    POSITION_INDEPENDENT_CODE ON
    )

install(TARGETS libpng EXPORT libpngTargets
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}/qt2
    )

export(EXPORT libpngTargets
    FILE ${CMAKE_CURRENT_BINARY_DIR}/libpngTargets.cmake
    TARGETS libpng
    NAMESPACE PNG::
)

install(EXPORT libpngTargets
    FILE libpngTargets.cmake
    NAMESPACE PNG::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/Qt2
    )
