using MakieGallery, AbstractPlotting, GLMakie, Test, Makie
using MakieGallery: @block, @cell

push!(MakieGallery.plotting_backends, "Makie")
database = MakieGallery.load_database()
tested_diff_path = joinpath(@__DIR__, "tested_different")
test_record_path = joinpath(@__DIR__, "test_recordings")
for path in (tested_diff_path, test_record_path)
    rm(path, force = true, recursive = true)
    mkpath(path)
end
recordings = MakieGallery.record_examples(test_record_path)
@test length(recordings) == length(database)
MakieGallery.run_comparison(test_record_path, tested_diff_path)
