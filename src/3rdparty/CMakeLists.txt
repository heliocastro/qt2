if(NOT SYSTEM_LIBPNG)
    add_subdirectory(libpng)
    list(APPEND LOCAL_OBJECTS $<TARGET_OBJECTS:libpng>)
endif()

# We need to link any 3rdparty set of objects used
set(THIRD_PARTY_OBJECTS ${LOCAL_OBJECTS} PARENT_SCOPE)
