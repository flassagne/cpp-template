import subprocess

subprocess.run("cmake -B {{ cookiecutter.build_dir }} \
            -G {{ cookiecutter.cmake_generator }} \
            -D ENABLE_CPPCHECK={{ cookiecutter.cppcheck }} \
            -D ENABLE_CLANG_TIDY={{ cookiecutter.clang_tidy}} \
            -D ENABLE_CLANGD={{ cookiecutter.clangd }}", shell=True)
