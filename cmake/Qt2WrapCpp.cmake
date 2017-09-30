function(qt2_wrap_cpp)
    set(options VERBOSE)
    set(oneValueArgs TARGET)
    set(multiValueArgs SOURCES)
    cmake_parse_arguments(qt2_wrap_cpp "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )
    foreach(mocable ${qt2_wrap_cpp_SOURCES})
        string(REGEX REPLACE ".cpp\$" ".moc"  outfileName "${mocable}")
        set(outfile "${CMAKE_CURRENT_BINARY_DIR}/${outfileName}")
        if(${qt2_wrap_cpp_VERBOSE})
            message(STATUS "Generating ${outfile}")
        endif()
        add_custom_command(
            OUTPUT ${outfileName}
            COMMAND moc ${CMAKE_CURRENT_SOURCE_DIR}/${mocable} -o ${outfileName}
            DEPENDS ${mocable})
        list(APPEND outfiles ${outfile})
    endforeach()
    add_custom_target(moc_${qt2_wrap_cpp_TARGET} ALL DEPENDS ${outfiles})
endfunction()
