include_guard()

execute_process(
    COMMAND "${CMAKE_COMMAND}" -E create_symlink "${CMAKE_BINARY_DIR}/compile_commands.json" compile_commands.json
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
    RESULT_VARIABLE SYMLINK_COMPILE_COMMAND_RESULT
)

if (NOT SYMLINK_COMPILE_COMMAND_RESULT EQUAL "0")
    message(WARNING "Failed to symlink 'compile_commands.json' ! Clangd need in root folder to working correctly !")
endif()