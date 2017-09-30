set(THIRD_PARTY "" CACHE INTERNAL "" FORCE)

if(NOT SYSTEM_LIBPNG)
    add_subdirectory(libpng)
endif()
