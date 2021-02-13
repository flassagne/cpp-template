# Environment vars
BUILD_DIR := build

# Computed vars
cmake_cmd := cmake -B ${BUILD_DIR}


all: configure build test


configure:
	${cmake_cmd} -G {{ cookiecutter.cmake_generator }} \
		-D ENABLE_CPPCHECK={{ cookiecutter.cppcheck }} \
		-D ENABLE_CLANG_TIDY={{ cookiecutter.clang_tidy}} \
		-D ENABLE_CLANGD={{ cookiecutter.clangd }}


build:
	cmake --build ${BUILD_DIR}


test:
	${cmake_cmd} --target test


clean:
	${cmake_cmd} --target clean


distclean:
	rm -rf ${BUILD_DIR}


.PHONY: build test clean distclean
