include(CMakeParseArguments)

function(qt2_wrap_cpp)
    set(options VERBOSE)
    set(oneValueArgs TARGET)
    set(multiValueArgs SOURCES)
    cmake_parse_arguments(arg "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    foreach(mocable ${arg_SOURCES})
        string(FIND ${mocable} ".cpp" IS_CPP)
        string(REGEX REPLACE ".cpp|.h\$" ""  outfileName "${mocable}")
        # Only generates moccpp if header file exists
        if("${IS_CPP}" LESS "0")
            add_custom_command(
                OUTPUT moc_${outfileName}.cpp
                COMMAND moc ${CMAKE_CURRENT_SOURCE_DIR}/${mocable} -o moc_${outfileName}.cpp
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${outfileName}.h
            )
            # Check if header really generates output
            set(outFiles ${outFiles} moc_${outfileName}.cpp)
            list(APPEND MOCCPP ${CMAKE_CURRENT_BINARY_DIR}/moc_${outfileName}.cpp)
        else()
            add_custom_command(
                OUTPUT ${outfileName}.moc
                COMMAND moc ${CMAKE_CURRENT_SOURCE_DIR}/${mocable} -o ${outfileName}.moc
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${mocable}
            )
            set(outFiles ${outFiles} ${outfileName}.moc)
        endif()
    endforeach()

    string(TOUPPER ${arg_TARGET} MOCTARGET)

    set(MOC_${MOCTARGET}_SRCS ${MOCCPP} PARENT_SCOPE)

    add_custom_target(moc_${arg_TARGET} ALL DEPENDS ${outFiles})
endfunction()

function(qt2_wrap_moc mocable_files)
    set(options)
    set(oneValueArgs TARGET)
    set(multiValueArgs SOURCES)

    cmake_parse_arguments(arg "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    foreach(mocable ${arg_SOURCES})
        string(FIND ${mocable} ".cpp" IS_CPP)
        string(REGEX REPLACE ".cpp|.h\$" ""  outfileName "${mocable}")
        # Only generates moccpp if header file exists
        if("${IS_CPP}" LESS "0")
            add_custom_command(
                OUTPUT moc_${outfileName}.cpp
                COMMAND moc ${CMAKE_CURRENT_SOURCE_DIR}/${mocable} -o moc_${outfileName}.cpp
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${outfileName}.h
            )
            # Check if header really generates output
            set(outFiles ${outFiles} moc_${outfileName}.cpp)
            list(APPEND ${mocable_files} ${CMAKE_CURRENT_BINARY_DIR}/moc_${outfileName}.cpp)
        else()
            add_custom_command(
                OUTPUT ${outfileName}.moc
                COMMAND moc ${CMAKE_CURRENT_SOURCE_DIR}/${mocable} -o ${outfileName}.moc
                DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${mocable}
            )
            set(outFiles ${outFiles} ${outfileName}.moc)
        endif()
    endforeach()

    set(${mocable_files} ${${mocable_files}} PARENT_SCOPE)
    add_custom_target(moc_${mocable_files} ALL DEPENDS ${outFiles})
endfunction()

function(qt2_wrap_ui ui_target)
    set(options)
    set(oneValueArgs)
    set(multiValueArgs SOURCES)

    cmake_parse_arguments(arg "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    foreach(ui_file ${arg_SOURCES})
        string(REGEX REPLACE ".ui\$" "" basename "${ui_file}")
        add_custom_command(
            OUTPUT ${basename}.h
            COMMAND uic ${CMAKE_CURRENT_SOURCE_DIR}/${ui_file} -o ${basename}.h
            DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${ui_file}
            )
        add_custom_command(
            OUTPUT ${basename}.cpp
            COMMAND uic ${CMAKE_CURRENT_SOURCE_DIR}/${ui_file} -i ${basename}.h -o ${basename}.cpp
            DEPENDS ${basename}.h
            )
        list(APPEND ${ui_target} ${CMAKE_CURRENT_BINARY_DIR}/${basename}.cpp)
        add_custom_command(
            OUTPUT moc_${basename}.cpp
            COMMAND moc ${basename}.h -o moc_${basename}.cpp
            DEPENDS ${basename}.h
            )
        list(APPEND ${ui_target} ${CMAKE_CURRENT_BINARY_DIR}/moc_${basename}.cpp)
        set(outFiles ${outFiles} ${basename}.h ${basename}.cpp)
    endforeach()

    set(${ui_target} ${${ui_target}} PARENT_SCOPE)
    add_custom_target(ui_${ui_target} ALL DEPENDS ${outFiles})
endfunction()
