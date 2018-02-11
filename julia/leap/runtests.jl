using Base.Test

include("leap.jl")

# For some reason, I'm getting this error:
# ERROR: LoadError: UndefVarError: @testset not defined
# Commenting out the @testset expressions and just using @test directly fixes
# it. Admittedly a hack, but my google fu failed to find me a solution to the
# problem.

#= @testset "Year not divisible by 4: common year" begin =#
    @test !is_leap_year(2015)
#= end =#

#= @testset "Year divisible by 4, not divisible by 100: leap year" begin =#
    @test is_leap_year(2016)
#= end =#

#= @testset "Year divisible by 100, not divisible by 400: common year" begin =#
    @test !is_leap_year(2100)
#= end =#

#= @testset "Year divisible by 400: leap year" begin =#
    @test is_leap_year(2000)
#= end =#
