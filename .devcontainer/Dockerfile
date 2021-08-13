FROM julia:latest

RUN apt-get update && apt-get install -y build-essential libatomic1 python gfortran perl wget m4 cmake pkg-config git

RUN set -eux; \
    git clone https://github.com/JuliaInterop/libcxxwrap-julia.git; \
    mkdir build; \
    cd build; \
    cmake -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_INSTALL_PREFIX=/usr/local -DAPPEND_OVERRIDES_TOML=ON ../libcxxwrap-julia/; \
    cmake --build . --config Debug --target install; \
    sed -i 's!libcxxwrap_julia = .*!libcxxwrap_julia = "/usr/local"!g' ~/.julia/artifacts/Overrides.toml; \
    julia -e 'using Pkg; Pkg.add("CxxWrap")'; \
    julia -e 'using Pkg; Pkg.test("CxxWrap")'; \
    julia -e 'using CxxWrap; println(CxxWrap.prefix_path())'; \
    rm -rf libcxxwrap-julia build
