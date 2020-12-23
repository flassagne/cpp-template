# Environment vars
BUILD_DIR := build

# Computed vars
cmake_cmd := cmake -B ${BUILD_DIR}


configure:
	${cmake_cmd}


build:
	${cmake_cmd} build


.PHONY: test
test:
	${cmake_cmd} --target test


.PHONY: clean
clean:
	${cmake_cmd} --target clean


.PHONY: distclean
distclean:
	rm -rf ${BUILD_DIR}
