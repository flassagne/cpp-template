include_guard()

# Define variables for each supported compiler, so that checking is easier
# later.

option(FORCE_COLORED_OUTPUT "Always produce ANSI-colored output (GNU/Clang only)." True)

if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    set(USING_CLANG TRUE)

    if (${FORCE_COLORED_OUTPUT})
        add_compile_options (-fcolor-diagnostics)
    endif()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    set(USING_GCC TRUE)

    if (${FORCE_COLORED_OUTPUT})
        add_compile_options (-fdiagnostics-color=always)
    endif()
elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    set(USING_MSVC TRUE)
endif()
