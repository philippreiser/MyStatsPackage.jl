using MyStatsPackage # here it is ok to use, don't put it in your "debug"-convenience setup.jl
include("setup.jl")


@testset "statistic_functions" begin
    include("statistic_functions.jl")
end
