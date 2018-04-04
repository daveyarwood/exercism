using Base.Test

# For some reason, I'm getting this error:
# ERROR: LoadError: UndefVarError: @testset not defined
# Commenting out the @testset expressions and just using @test directly fixes
# it. Admittedly a hack, but my google fu failed to find me a solution to the
# problem.

include("nucleotide-count.jl")

#= @testset "empty strand" begin =#
    @test count_nucleotides("") == Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
#= end =#

#= @testset "strand with repeated nucleotide" begin =#
    @test count_nucleotides("GGGGGGG") == Dict('A' => 0, 'C' => 0, 'G' => 7, 'T' => 0)
#= end =#

#= @testset "strand with multiple nucleotides" begin =#
    @test count_nucleotides("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC") == Dict('A' => 20, 'C' => 12, 'G' => 17, 'T' => 21)
#= end =#

#= @testset "strand with invalid nucleotides" begin =#
    @test_throws ErrorException count_nucleotides("AGXXACT")
#= end =#
