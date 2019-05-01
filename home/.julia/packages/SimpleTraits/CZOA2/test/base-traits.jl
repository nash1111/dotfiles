using SimpleTraits.BaseTraits

@test istrait(IsAnything{Any})
@test istrait(IsAnything{Union{}})
@test istrait(IsAnything{Int})

@test !istrait(IsNothing{Any})
@test !istrait(IsNothing{Union{}})
@test !istrait(IsNothing{Int})

@test istrait(IsBits{Int})
@test !istrait(IsBits{Vector{Int}})

@test istrait(IsImmutable{Float64})
@test !istrait(IsImmutable{Vector{Int}})

@test istrait(IsCallable{Function})

a = collect(1:5)
b = view(a, 2:3)
c = view(a, 1:2:5)
@test istrait(IsContiguous{typeof(b)})
@test !istrait(IsContiguous{typeof(c)})

@test istrait(IsIndexLinear{Vector})
@test !istrait(IsIndexLinear{AbstractArray})

struct T9867 end
@test istrait(IsCallable{T9867})

if VERSION<v"1-"
    @test_throws ErrorException istrait(IsIterator{Base.UnitRange})
else
    @test istrait(IsIterator{Base.UnitRange})
end
