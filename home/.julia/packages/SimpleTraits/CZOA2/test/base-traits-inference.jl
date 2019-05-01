# Tests that trait dispatch for the BaseTraits does not incur a
# overhead.


# Dict with base-traits to check using value[1] as type and value[2]
# as number of lines allowed in llvm code
cutoff = 5
basetrs = [:IsConcrete=>:Int,
           :IsBits=>:Int,
           :IsImmutable=>:Int,
           :IsContiguous=>:(SubArray{Int64,1,Array{Int64,1},Tuple{Array{Int64,1}},false}),
           :IsIndexLinear=>:(Vector{Int}),
           :IsAnything=>:Int,
           :IsNothing=>:Int,
           :IsCallable=>:(typeof(sin)),
           :IsIterator=>:(Dict{Int,Int})]

for (bt, tp) in basetrs
    bt==:IsIterator && VERSION<v"1-" && continue # errors on 0.7 due to start/step/done
    @test @eval @check_fast_traitdispatch $bt $tp true
end
