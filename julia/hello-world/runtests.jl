using Base.Test

include("hello-world.jl")

@testset "Say Hi!" begin
    @test hello() == "Hello, World!"
    @test hello("Bob") == "Hello, Bob!"
    @test hello("Alice") == "Hello, Alice!"
end
