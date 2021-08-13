using Test

module ModFoo
    using CxxWrap

    @wrapmodule joinpath("build", "lib", "libfoo")

    function __init__()
        @initcxx
    end
end

@show f = ModFoo.Foo(1)
@test ModFoo.add(f, 1) == 2
@show ModFoo.add(f, 1)
