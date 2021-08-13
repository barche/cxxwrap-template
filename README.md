# cxxwrap-template

This is a template library for use with [CxxWrap](https://github.com/JuliaInterop/CxxWrap.jl).

To test:
1. Open in [Visual Studio Code](https://code.visualstudio.com/) using the [Docker extension](https://code.visualstudio.com/docs/remote/containers)
2. Build the library using the CMake configuration and build buttons at the bottom
3. Run the Julia file `testfoo.jl` in the container

To wrap your own library, you can add e.g. apt install commands to `.devcontainer/Dockerfile` and rebuild the container from within vscode.
