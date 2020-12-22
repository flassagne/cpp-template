cmake_minimum_required(VERSION 3.15)
project({{cookiecutter.project_slug}} CXX)

include(cmake/base.cmake)
include(cmake/project_options.cmake)
include(cmake/conan.cmake)

conan(
    # FILE or PACKAGES
)

add_subdirectory({{ cookiecutter.project_slug }})
