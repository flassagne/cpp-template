# Environment vars
BIN_DIR := build
GENERATOR := Ninja

# Computed vars
cmake_cmd := cmake -B ${BIN_DIR}


cmake:
	${cmake_cmd} -G${GENERATOR}


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
	rm -rf ${BIN_DIR}
