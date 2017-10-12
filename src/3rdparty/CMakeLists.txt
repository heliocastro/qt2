if(NOT SYSTEM_LIBPNG)
    add_subdirectory(libpng)
endif()

if(NOT SYSTEM_ZLIB)
    add_subdirectory(zlib)
endif()
