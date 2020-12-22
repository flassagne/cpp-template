# C++ Cookiecutter Template

This is a [cookiecutter](https://github.com/cookiecutter/cookiecutter) template
for a C++ project using [CMake](https://cmake.org) and [Conan](conan.io). It
directly fork from [similar project by Tarcisio](https://github.com/lefticus/cpp_starter_project). The main differences
are:

- Follow [Canonical Project Structure](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p1204r0.html) guidelines.
- Use C++ 20 standard.
- Testing with [DOCtest][https://github.com/onqtam/doctest] framework.

## How to use

First, setup your own project with `cookiecutter`:

```bash
cookiecutter gh:flassagne/cpp-template
```

This will create a directory with the name you defined in `project_slug`.
Enter that directory, then supply the dependencies with `conanfile.txt` or `conanfile.py` or **directly** in `CMakeLists.txt` with `PACKAGES` you wish to download and
build with `conan` in `CMakeLists.txt` by set the filename in `conan` cmake function like below:

```cmake
conan(
    PACKAGES
        fmt/0.6.10
)
```

Finally, create your build directory:

```bash
make cmake
```

> Under the hood cmake use **Ninja** generator and a **Makefile** is create to run in oneline command

To link your dependencies, add them to your targets (e.g. `main` in
`src/CMakeLists.txt`) like this:

```cmake
target_link_libraries(
    main
        PUBLIC
            (...)
            CONAN_PKG::fmt
)
```

Then, build your project:

```bash
make build
```

Enjoy your project with your dependencies, a compile database already generated,
warnings enabled, etc. :)
