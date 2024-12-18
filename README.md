# Raylib Project Template

This is a simple raylib project template.

## Dependencies

The following dependencies are needed to build raylib from source on linux. More details about [raylib compilation here](https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux#build-raylib-using-cmake)
**Ubuntu**

        sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev

## Usage

1. **Build the project**: Run `make build` to compile the project. This will create an executable in the `bin` directory.

2. **Run the project**: After building the project, you can run it with `make run`.

3. **Clean the project**: If you want to clean up the build artifacts, you can run `make clean`.

4. **Build the raylib library**: If you need to build the raylib library, you can run `make build_raylib`.

5. **Clean the raylib library**: If you want to clean up the raylib library, you can run `make clean_raylib`.

## Directory Structure

- `src`: This directory contains the source files of the project.
- `include`: This directory contains the header files.
- `lib`: This directory contains the library files.
- `bin`: This directory contains the compiled application.
